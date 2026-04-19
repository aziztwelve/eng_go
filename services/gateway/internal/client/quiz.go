package client

import (
	"context"
	"fmt"

	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"

	quizv1 "github.com/elearning/shared/pkg/proto/quiz/v1"
)

// QuizClient клиент для Quiz Service
type QuizClient struct {
	client quizv1.QuizServiceClient
	conn   *grpc.ClientConn
}

// NewQuizClient создает новый клиент для Quiz Service
func NewQuizClient(address string) (*QuizClient, error) {
	conn, err := grpc.NewClient(
		address,
		grpc.WithTransportCredentials(insecure.NewCredentials()),
	)
	if err != nil {
		return nil, fmt.Errorf("failed to connect to quiz service: %w", err)
	}

	return &QuizClient{
		client: quizv1.NewQuizServiceClient(conn),
		conn:   conn,
	}, nil
}

// Close закрывает соединение
func (c *QuizClient) Close() error {
	return c.conn.Close()
}

// Quiz management

func (c *QuizClient) CreateQuiz(ctx context.Context, req *quizv1.CreateQuizRequest) (*quizv1.CreateQuizResponse, error) {
	return c.client.CreateQuiz(ctx, req)
}

func (c *QuizClient) GetQuiz(ctx context.Context, req *quizv1.GetQuizRequest) (*quizv1.GetQuizResponse, error) {
	return c.client.GetQuiz(ctx, req)
}

func (c *QuizClient) UpdateQuiz(ctx context.Context, req *quizv1.UpdateQuizRequest) (*quizv1.UpdateQuizResponse, error) {
	return c.client.UpdateQuiz(ctx, req)
}

func (c *QuizClient) DeleteQuiz(ctx context.Context, req *quizv1.DeleteQuizRequest) (*quizv1.DeleteQuizResponse, error) {
	return c.client.DeleteQuiz(ctx, req)
}

func (c *QuizClient) ListQuizzes(ctx context.Context, req *quizv1.ListQuizzesRequest) (*quizv1.ListQuizzesResponse, error) {
	return c.client.ListQuizzes(ctx, req)
}

func (c *QuizClient) GetQuizzesByLesson(ctx context.Context, req *quizv1.GetQuizzesByLessonRequest) (*quizv1.GetQuizzesByLessonResponse, error) {
	return c.client.GetQuizzesByLesson(ctx, req)
}

// Question management

func (c *QuizClient) AddQuestion(ctx context.Context, req *quizv1.AddQuestionRequest) (*quizv1.AddQuestionResponse, error) {
	return c.client.AddQuestion(ctx, req)
}

func (c *QuizClient) UpdateQuestion(ctx context.Context, req *quizv1.UpdateQuestionRequest) (*quizv1.UpdateQuestionResponse, error) {
	return c.client.UpdateQuestion(ctx, req)
}

func (c *QuizClient) DeleteQuestion(ctx context.Context, req *quizv1.DeleteQuestionRequest) (*quizv1.DeleteQuestionResponse, error) {
	return c.client.DeleteQuestion(ctx, req)
}

// Quiz attempts

func (c *QuizClient) StartQuizAttempt(ctx context.Context, req *quizv1.StartQuizAttemptRequest) (*quizv1.StartQuizAttemptResponse, error) {
	return c.client.StartQuizAttempt(ctx, req)
}

func (c *QuizClient) SubmitAnswer(ctx context.Context, req *quizv1.SubmitAnswerRequest) (*quizv1.SubmitAnswerResponse, error) {
	return c.client.SubmitAnswer(ctx, req)
}

func (c *QuizClient) CompleteQuizAttempt(ctx context.Context, req *quizv1.CompleteQuizAttemptRequest) (*quizv1.CompleteQuizAttemptResponse, error) {
	return c.client.CompleteQuizAttempt(ctx, req)
}

func (c *QuizClient) GetAttempt(ctx context.Context, req *quizv1.GetAttemptRequest) (*quizv1.GetAttemptResponse, error) {
	return c.client.GetAttempt(ctx, req)
}

func (c *QuizClient) GetUserAttempts(ctx context.Context, req *quizv1.GetUserAttemptsRequest) (*quizv1.GetUserAttemptsResponse, error) {
	return c.client.GetUserAttempts(ctx, req)
}
