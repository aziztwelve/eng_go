// Package handler — Phase 5: REST endpoints для ai-service.
// Все маршруты требуют auth-middleware: userID берётся из gin.Context.
package handler

import (
	"context"
	"encoding/json"
	"io"
	"net/http"
	"time"

	"github.com/gin-gonic/gin"
	"google.golang.org/protobuf/encoding/protojson"

	"github.com/elearning/gateway/internal/client"
	"github.com/elearning/gateway/internal/errors"
	aiv1 "github.com/elearning/shared/pkg/proto/ai/v1"
)

// sseChunkWriteTimeout — максимум на один SSE chunk-write. Если клиент
// не успевает читать (TCP back-pressure), gateway отрубит соединение и
// пропагирует cancel в gRPC, вместо того чтобы держать ресурсы вечно.
//
// 10 секунд — компромисс: достаточно для медленных мобильных сетей и
// плохих proxy, но не настолько чтобы один зависший клиент удерживал
// ai-service connection часами.
const sseChunkWriteTimeout = 10 * time.Second

// AIHandler оборачивает AIClient.
type AIHandler struct {
	ai *client.AIClient
}

// NewAIHandler — для DI.
func NewAIHandler(ai *client.AIClient) *AIHandler {
	return &AIHandler{ai: ai}
}

// === Conversations ===

// startConversationRequest — POST /api/v1/ai/conversations.
type startConversationRequest struct {
	Scenario       string `json:"scenario"        binding:"required"`
	TargetLanguage string `json:"target_language"`
	UserLevel      string `json:"user_level"`
	Title          string `json:"title"`
}

func (h *AIHandler) StartConversation(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	var req startConversationRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	resp, err := h.ai.StartConversation(c.Request.Context(), &aiv1.StartConversationRequest{
		UserId:         userID,
		Scenario:       req.Scenario,
		TargetLanguage: req.TargetLanguage,
		UserLevel:      req.UserLevel,
		Title:          req.Title,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// sendMessageRequest — POST /api/v1/ai/conversations/:id/messages.
type sendMessageRequest struct {
	Content   string `json:"content"    binding:"required"`
	WantAudio bool   `json:"want_audio"`
}

func (h *AIHandler) SendMessage(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	convID := c.Param("id")
	if convID == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error": "conversation id required"})
		return
	}
	var req sendMessageRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	resp, err := h.ai.SendMessage(c.Request.Context(), &aiv1.SendMessageRequest{
		UserId:         userID,
		ConversationId: convID,
		Content:        req.Content,
		WantAudio:      req.WantAudio,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// SendMessageStream — Phase 5.27. POST /api/v1/ai/conversations/:id/stream
//
// Bridge между gRPC server-streaming RPC `AIService.SendMessageStream` и
// HTTP Server-Sent Events (text/event-stream).
//
// SSE event-схема (поле `event:` указывает тип):
//
//	event: user
//	data: {<Message JSON>}
//
//	event: delta
//	data: {"delta":"...incremental text..."}
//
//	event: done
//	data: {<SendMessageResponse JSON>}
//
//	event: error
//	data: {"error":"..."}
//
// Поток ВСЕГДА завершается одним из: `done` или `error`. После terminal-event
// gateway закрывает соединение. JSON формат — protojson (snake_case).
func (h *AIHandler) SendMessageStream(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	convID := c.Param("id")
	if convID == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error": "conversation id required"})
		return
	}
	var req sendMessageRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	// Создаём cancelable ctx для gRPC stream'а. На fail/cancel мы
	// явно вызываем grpcCancel() — gRPC закроет соединение и ai-service
	// корректно прервёт работу (без increment quota).
	grpcCtx, grpcCancel := context.WithCancel(c.Request.Context())
	defer grpcCancel()

	stream, err := h.ai.SendMessageStream(grpcCtx, &aiv1.SendMessageRequest{
		UserId:         userID,
		ConversationId: convID,
		Content:        req.Content,
		WantAudio:      req.WantAudio,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}

	// SSE headers + flush — после этого статус-коды менять нельзя.
	c.Writer.Header().Set("Content-Type", "text/event-stream")
	c.Writer.Header().Set("Cache-Control", "no-cache, no-transform")
	c.Writer.Header().Set("Connection", "keep-alive")
	c.Writer.Header().Set("X-Accel-Buffering", "no") // отключаем nginx буферизацию
	c.Writer.WriteHeader(http.StatusOK)

	flusher, _ := c.Writer.(http.Flusher)
	if flusher == nil {
		// Маловероятно с gin/std http, но fail-fast.
		writeSSE(c.Writer, "error", []byte(`{"error":"streaming not supported"}`))
		return
	}

	// Phase 5.27.1: per-chunk write deadline через http.NewResponseController.
	// Если клиент медленный (TCP back-pressure), Write вернёт error — мы
	// отрубаем gRPC и выходим. На Go ≥1.20 поддерживается; на старых — no-op.
	rc := http.NewResponseController(c.Writer)
	bp := newBackpressureWriter(c.Writer, rc, sseChunkWriteTimeout)

	marshal := protojson.MarshalOptions{UseProtoNames: true, EmitUnpopulated: false}

	for {
		chunk, err := stream.Recv()
		if err == io.EOF {
			return
		}
		if err != nil {
			payload, _ := json.Marshal(gin.H{"error": err.Error()})
			_ = bp.writeSSE("error", payload)
			_ = rc.Flush()
			return
		}

		var writeErr error
		switch k := chunk.GetKind().(type) {
		case *aiv1.SendMessageStreamChunk_UserMessage:
			payload, _ := marshal.Marshal(k.UserMessage)
			writeErr = bp.writeSSE("user", payload)
		case *aiv1.SendMessageStreamChunk_Delta:
			payload, _ := json.Marshal(gin.H{"delta": k.Delta})
			writeErr = bp.writeSSE("delta", payload)
		case *aiv1.SendMessageStreamChunk_Done:
			payload, _ := marshal.Marshal(k.Done)
			_ = bp.writeSSE("done", payload)
			_ = rc.Flush()
			return
		case *aiv1.SendMessageStreamChunk_ErrorMessage:
			payload, _ := json.Marshal(gin.H{"error": k.ErrorMessage})
			_ = bp.writeSSE("error", payload)
			_ = rc.Flush()
			return
		}
		if writeErr != nil {
			// Клиент отвалился / TCP back-pressure / write timeout.
			// grpcCancel через defer прервёт gRPC stream и ai-service.
			return
		}
		if err := rc.Flush(); err != nil {
			// Flush не удался — клиент ушёл. Завершаемся.
			return
		}
	}
}

// backpressureWriter — обёртка над http.ResponseWriter с per-write deadline.
//
// Контракт: каждый вызов writeSSE сначала ставит SetWriteDeadline(now+timeout),
// затем пишет. Если клиент не читает (TCP-buffer полон) → Write вернёт
// timeout error → caller отрубает gRPC stream.
type backpressureWriter struct {
	w       io.Writer
	rc      *http.ResponseController
	timeout time.Duration
}

func newBackpressureWriter(w io.Writer, rc *http.ResponseController, timeout time.Duration) *backpressureWriter {
	return &backpressureWriter{w: w, rc: rc, timeout: timeout}
}

func (b *backpressureWriter) writeSSE(event string, data []byte) error {
	// Best-effort SetWriteDeadline. ErrNotSupported (например, в http2 HTTP/3
	// в old Go) — пропускаем, не валим запрос.
	if b.timeout > 0 {
		_ = b.rc.SetWriteDeadline(time.Now().Add(b.timeout))
	}
	if event != "" {
		if _, err := io.WriteString(b.w, "event: "+event+"\n"); err != nil {
			return err
		}
	}
	if _, err := io.WriteString(b.w, "data: "); err != nil {
		return err
	}
	if _, err := b.w.Write(data); err != nil {
		return err
	}
	if _, err := io.WriteString(b.w, "\n\n"); err != nil {
		return err
	}
	return nil
}

// writeSSE пишет одно SSE-событие без backpressure (для не-streaming
// мест в коде, если они появятся). Сейчас не используется, оставлен
// для совместимости.
func writeSSE(w io.Writer, event string, data []byte) {
	if event != "" {
		_, _ = io.WriteString(w, "event: ")
		_, _ = io.WriteString(w, event)
		_, _ = io.WriteString(w, "\n")
	}
	_, _ = io.WriteString(w, "data: ")
	_, _ = w.Write(data)
	_, _ = io.WriteString(w, "\n\n")
}

func (h *AIHandler) ListConversations(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	limit, offset := parsePagination(c)
	resp, err := h.ai.ListConversations(c.Request.Context(), &aiv1.ListConversationsRequest{
		UserId: userID,
		Limit:  int32(limit),
		Offset: int32(offset),
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

func (h *AIHandler) GetConversation(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	convID := c.Param("id")
	if convID == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error": "conversation id required"})
		return
	}
	resp, err := h.ai.GetConversation(c.Request.Context(), &aiv1.GetConversationRequest{
		UserId:         userID,
		ConversationId: convID,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

func (h *AIHandler) DeleteConversation(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	convID := c.Param("id")
	if convID == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error": "conversation id required"})
		return
	}
	_, err := h.ai.DeleteConversation(c.Request.Context(), &aiv1.DeleteConversationRequest{
		UserId:         userID,
		ConversationId: convID,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.Status(http.StatusNoContent)
}

func (h *AIHandler) ListScenarios(c *gin.Context) {
	resp, err := h.ai.ListScenarios(c.Request.Context(), &aiv1.ListScenariosRequest{
		Language:  c.Query("language"),
		UserLevel: c.Query("user_level"),
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// === Explain ===

type explainRequest struct {
	StepID          string `json:"step_id"`
	IncorrectAnswer string `json:"incorrect_answer" binding:"required"`
	CorrectAnswer   string `json:"correct_answer"`
	Question        string `json:"question"`
	TargetLanguage  string `json:"target_language"`
	NativeLanguage  string `json:"native_language"`
}

func (h *AIHandler) ExplainMistake(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	var req explainRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	resp, err := h.ai.ExplainMistake(c.Request.Context(), &aiv1.ExplainMistakeRequest{
		UserId:          userID,
		StepId:          req.StepID,
		IncorrectAnswer: req.IncorrectAnswer,
		CorrectAnswer:   req.CorrectAnswer,
		Question:        req.Question,
		TargetLanguage:  req.TargetLanguage,
		NativeLanguage:  req.NativeLanguage,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// ExplainMistakeStream — Phase 5.X. POST /api/v1/ai/explain/stream
//
// SSE bridge с тем же контрактом, что AskTutorStream / SendMessageStream:
//   - event: delta — { delta: string }     (только при cache miss)
//   - event: done  — { explanation, cached } terminal success
//   - event: error — { error: string }      terminal failure
func (h *AIHandler) ExplainMistakeStream(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	var req explainRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	grpcCtx, grpcCancel := context.WithCancel(c.Request.Context())
	defer grpcCancel()

	stream, err := h.ai.ExplainMistakeStream(grpcCtx, &aiv1.ExplainMistakeRequest{
		UserId:          userID,
		StepId:          req.StepID,
		IncorrectAnswer: req.IncorrectAnswer,
		CorrectAnswer:   req.CorrectAnswer,
		Question:        req.Question,
		TargetLanguage:  req.TargetLanguage,
		NativeLanguage:  req.NativeLanguage,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}

	bp, rc, ok := beginSSE(c)
	if !ok {
		return
	}
	marshal := protojson.MarshalOptions{UseProtoNames: true, EmitUnpopulated: false}

	for {
		chunk, err := stream.Recv()
		if err == io.EOF {
			return
		}
		if err != nil {
			payload, _ := json.Marshal(gin.H{"error": err.Error()})
			_ = bp.writeSSE("error", payload)
			_ = rc.Flush()
			return
		}
		var writeErr error
		switch k := chunk.GetKind().(type) {
		case *aiv1.ExplainMistakeStreamChunk_Delta:
			payload, _ := json.Marshal(gin.H{"delta": k.Delta})
			writeErr = bp.writeSSE("delta", payload)
		case *aiv1.ExplainMistakeStreamChunk_Done:
			payload, _ := marshal.Marshal(k.Done)
			_ = bp.writeSSE("done", payload)
			_ = rc.Flush()
			return
		case *aiv1.ExplainMistakeStreamChunk_ErrorMessage:
			payload, _ := json.Marshal(gin.H{"error": k.ErrorMessage})
			_ = bp.writeSSE("error", payload)
			_ = rc.Flush()
			return
		}
		if writeErr != nil {
			return
		}
		if err := rc.Flush(); err != nil {
			return
		}
	}
}

// === Writing ===

type assessWritingRequest struct {
	Prompt         string `json:"prompt"`
	UserText       string `json:"user_text" binding:"required"`
	TargetLanguage string `json:"target_language"`
	UserLevel      string `json:"user_level"`
}

func (h *AIHandler) AssessWriting(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	var req assessWritingRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	resp, err := h.ai.AssessWriting(c.Request.Context(), &aiv1.AssessWritingRequest{
		UserId:         userID,
		Prompt:         req.Prompt,
		UserText:       req.UserText,
		TargetLanguage: req.TargetLanguage,
		UserLevel:      req.UserLevel,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// AssessWritingStream — Phase 5.X. POST /api/v1/ai/writing/assess/stream
//
// Стрим writing-assessment'а. Delta-чанки — сырые JSON-токены от
// провайдера (typing-indicator UX). Done — структурированный
// AssessWritingResponse с распарсенными scores / feedback.
func (h *AIHandler) AssessWritingStream(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	var req assessWritingRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	grpcCtx, grpcCancel := context.WithCancel(c.Request.Context())
	defer grpcCancel()

	stream, err := h.ai.AssessWritingStream(grpcCtx, &aiv1.AssessWritingRequest{
		UserId:         userID,
		Prompt:         req.Prompt,
		UserText:       req.UserText,
		TargetLanguage: req.TargetLanguage,
		UserLevel:      req.UserLevel,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}

	bp, rc, ok := beginSSE(c)
	if !ok {
		return
	}
	marshal := protojson.MarshalOptions{UseProtoNames: true, EmitUnpopulated: false}

	for {
		chunk, err := stream.Recv()
		if err == io.EOF {
			return
		}
		if err != nil {
			payload, _ := json.Marshal(gin.H{"error": err.Error()})
			_ = bp.writeSSE("error", payload)
			_ = rc.Flush()
			return
		}
		var writeErr error
		switch k := chunk.GetKind().(type) {
		case *aiv1.AssessWritingStreamChunk_Delta:
			payload, _ := json.Marshal(gin.H{"delta": k.Delta})
			writeErr = bp.writeSSE("delta", payload)
		case *aiv1.AssessWritingStreamChunk_Done:
			payload, _ := marshal.Marshal(k.Done)
			_ = bp.writeSSE("done", payload)
			_ = rc.Flush()
			return
		case *aiv1.AssessWritingStreamChunk_ErrorMessage:
			payload, _ := json.Marshal(gin.H{"error": k.ErrorMessage})
			_ = bp.writeSSE("error", payload)
			_ = rc.Flush()
			return
		}
		if writeErr != nil {
			return
		}
		if err := rc.Flush(); err != nil {
			return
		}
	}
}

// beginSSE — общий helper для всех SSE-эндпоинтов: ставит заголовки,
// проверяет flusher, возвращает backpressure-aware writer + ResponseController.
// На ошибке flusher'а пишет error event и возвращает ok=false (caller
// должен сразу выйти).
func beginSSE(c *gin.Context) (*backpressureWriter, *http.ResponseController, bool) {
	c.Writer.Header().Set("Content-Type", "text/event-stream")
	c.Writer.Header().Set("Cache-Control", "no-cache, no-transform")
	c.Writer.Header().Set("Connection", "keep-alive")
	c.Writer.Header().Set("X-Accel-Buffering", "no")
	c.Writer.WriteHeader(http.StatusOK)

	flusher, _ := c.Writer.(http.Flusher)
	if flusher == nil {
		writeSSE(c.Writer, "error", []byte(`{"error":"streaming not supported"}`))
		return nil, nil, false
	}
	rc := http.NewResponseController(c.Writer)
	bp := newBackpressureWriter(c.Writer, rc, sseChunkWriteTimeout)
	return bp, rc, true
}

// === Pronunciation ===

// CheckPronunciation POST /api/v1/ai/pronunciation/check (multipart/form-data).
//
// Поля:
//   audio (file, обязательно)
//   target_text
//   language
//   step_id (optional)
func (h *AIHandler) CheckPronunciation(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}

	file, fileHeader, err := c.Request.FormFile("audio")
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "audio file required: " + err.Error()})
		return
	}
	defer file.Close()
	audio, err := io.ReadAll(file)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "read audio: " + err.Error()})
		return
	}

	targetText := c.PostForm("target_text")
	if targetText == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error": "target_text required"})
		return
	}

	resp, err := h.ai.CheckPronunciation(c.Request.Context(), &aiv1.CheckPronunciationRequest{
		UserId:     userID,
		StepId:     c.PostForm("step_id"),
		TargetText: targetText,
		Audio:      audio,
		AudioMime:  fileHeader.Header.Get("Content-Type"),
		Language:   c.PostForm("language"),
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// === Tutor ===

type askTutorRequest struct {
	Question       string `json:"question" binding:"required"`
	TargetLanguage string `json:"target_language"`
	NativeLanguage string `json:"native_language"`
}

func (h *AIHandler) AskTutor(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	var req askTutorRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	resp, err := h.ai.AskTutor(c.Request.Context(), &aiv1.AskTutorRequest{
		UserId:         userID,
		Question:       req.Question,
		TargetLanguage: req.TargetLanguage,
		NativeLanguage: req.NativeLanguage,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// AskTutorStream — Phase 5.X. POST /api/v1/ai/tutor/stream
//
// Bridge между gRPC server-streaming RPC `AIService.AskTutorStream` и
// HTTP Server-Sent Events. Контракт идентичен SendMessageStream, минус
// `user` event (нет persistence в tutor Q&A).
//
// SSE event-схема:
//
//	event: delta
//	data: {"delta":"...incremental text..."}
//
//	event: done
//	data: {<AskTutorResponse JSON>}
//
//	event: error
//	data: {"error":"..."}
//
// Поток ВСЕГДА завершается одним из: `done` или `error`. JSON формат —
// protojson (snake_case).
func (h *AIHandler) AskTutorStream(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	var req askTutorRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	grpcCtx, grpcCancel := context.WithCancel(c.Request.Context())
	defer grpcCancel()

	stream, err := h.ai.AskTutorStream(grpcCtx, &aiv1.AskTutorRequest{
		UserId:         userID,
		Question:       req.Question,
		TargetLanguage: req.TargetLanguage,
		NativeLanguage: req.NativeLanguage,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}

	c.Writer.Header().Set("Content-Type", "text/event-stream")
	c.Writer.Header().Set("Cache-Control", "no-cache, no-transform")
	c.Writer.Header().Set("Connection", "keep-alive")
	c.Writer.Header().Set("X-Accel-Buffering", "no")
	c.Writer.WriteHeader(http.StatusOK)

	flusher, _ := c.Writer.(http.Flusher)
	if flusher == nil {
		writeSSE(c.Writer, "error", []byte(`{"error":"streaming not supported"}`))
		return
	}

	rc := http.NewResponseController(c.Writer)
	bp := newBackpressureWriter(c.Writer, rc, sseChunkWriteTimeout)
	marshal := protojson.MarshalOptions{UseProtoNames: true, EmitUnpopulated: false}

	for {
		chunk, err := stream.Recv()
		if err == io.EOF {
			return
		}
		if err != nil {
			payload, _ := json.Marshal(gin.H{"error": err.Error()})
			_ = bp.writeSSE("error", payload)
			_ = rc.Flush()
			return
		}

		var writeErr error
		switch k := chunk.GetKind().(type) {
		case *aiv1.AskTutorStreamChunk_Delta:
			payload, _ := json.Marshal(gin.H{"delta": k.Delta})
			writeErr = bp.writeSSE("delta", payload)
		case *aiv1.AskTutorStreamChunk_Done:
			payload, _ := marshal.Marshal(k.Done)
			_ = bp.writeSSE("done", payload)
			_ = rc.Flush()
			return
		case *aiv1.AskTutorStreamChunk_ErrorMessage:
			payload, _ := json.Marshal(gin.H{"error": k.ErrorMessage})
			_ = bp.writeSSE("error", payload)
			_ = rc.Flush()
			return
		}
		if writeErr != nil {
			return
		}
		if err := rc.Flush(); err != nil {
			return
		}
	}
}

// === Quota ===

// quotaStatusDTO — явный snake_case JSON без omitempty,
// чтобы 0-counters не выпадали из ответа (иначе фронт ловит
// `undefined < limit` → ложный «лимит исчерпан»).
type quotaStatusDTO struct {
	ChatUsed          int32   `json:"chat_used"`
	ChatLimit         int32   `json:"chat_limit"`
	VoiceMinutesUsed  float64 `json:"voice_minutes_used"`
	VoiceMinutesLimit float64 `json:"voice_minutes_limit"`
	WritingUsed       int32   `json:"writing_used"`
	WritingLimit      int32   `json:"writing_limit"`
	Plan              string  `json:"plan"`
	ResetsAt          string  `json:"resets_at,omitempty"`
}

func (h *AIHandler) GetQuotaStatus(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	resp, err := h.ai.GetQuotaStatus(c.Request.Context(), &aiv1.GetQuotaStatusRequest{
		UserId: userID,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	dto := quotaStatusDTO{
		ChatUsed:          resp.GetChatUsed(),
		ChatLimit:         resp.GetChatLimit(),
		VoiceMinutesUsed:  resp.GetVoiceMinutesUsed(),
		VoiceMinutesLimit: resp.GetVoiceMinutesLimit(),
		WritingUsed:       resp.GetWritingUsed(),
		WritingLimit:      resp.GetWritingLimit(),
		Plan:              resp.GetPlan(),
	}
	if t := resp.GetResetsAt(); t != nil {
		dto.ResetsAt = t.AsTime().UTC().Format("2006-01-02T15:04:05Z")
	}
	c.JSON(http.StatusOK, dto)
}

// === Feedback (Phase 5.X) ===

// submitFeedbackRequest — POST /api/v1/ai/messages/:id/feedback.
type submitFeedbackRequest struct {
	Rating  int32  `json:"rating"  binding:"required"`
	Comment string `json:"comment"`
}

func (h *AIHandler) SubmitMessageFeedback(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	msgID := c.Param("id")
	if msgID == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error": "message id required"})
		return
	}
	var req submitFeedbackRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	resp, err := h.ai.SubmitMessageFeedback(c.Request.Context(), &aiv1.SubmitMessageFeedbackRequest{
		UserId:    userID,
		MessageId: msgID,
		Rating:    req.Rating,
		Comment:   req.Comment,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

func (h *AIHandler) DeleteMessageFeedback(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	msgID := c.Param("id")
	if msgID == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error": "message id required"})
		return
	}
	_, err := h.ai.DeleteMessageFeedback(c.Request.Context(), &aiv1.DeleteMessageFeedbackRequest{
		UserId:    userID,
		MessageId: msgID,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.Status(http.StatusNoContent)
}

// === Admin: content generation ===

type generateExerciseRequest struct {
	ExerciseType   string   `json:"exercise_type"   binding:"required"`
	Vocabulary     []string `json:"vocabulary"`
	UserLevel      string   `json:"user_level"`
	TargetLanguage string   `json:"target_language"`
	NativeLanguage string   `json:"native_language"`
}

func (h *AIHandler) GenerateExercise(c *gin.Context) {
	var req generateExerciseRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	resp, err := h.ai.GenerateExercise(c.Request.Context(), &aiv1.GenerateExerciseRequest{
		ExerciseType:   req.ExerciseType,
		Vocabulary:     req.Vocabulary,
		UserLevel:      req.UserLevel,
		TargetLanguage: req.TargetLanguage,
		NativeLanguage: req.NativeLanguage,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}
