#!/usr/bin/env python3
"""Exercise legacy/new wire payloads using a new diagnostic account, never real user data."""
import argparse, base64, json, secrets, urllib.error, urllib.request, uuid
parser=argparse.ArgumentParser();parser.add_argument('--base-url',required=True);args=parser.parse_args()
base=args.base_url.rstrip('/');token=None

def call(method,path,data=None,expected=(200,)):
    headers={'Content-Type':'application/json','X-App-Version':'1.0','Accept-Language':'en'}
    if token:headers['Authorization']='Bearer '+token
    request=urllib.request.Request(base+path,data=json.dumps(data).encode() if data is not None else None,headers=headers,method=method)
    try:
        with urllib.request.urlopen(request,timeout=35) as response:status=response.status;body=json.loads(response.read() or '{}')
    except urllib.error.HTTPError as error:
        status=error.code
        try:body=json.loads(error.read())
        except ValueError:body={}
    assert status in expected,(method,path,status,body.get('error',''))
    return body

suffix=uuid.uuid4().hex[:12]
auth=call('POST','/auth/register',{'email':f'word-review-{suffix}@example.invalid','username':'review_'+suffix,'password':secrets.token_urlsafe(22)},expected=(201,))
token=auth['access_token'];claims=json.loads(base64.urlsafe_b64decode(token.split('.')[1]+'==='));owner=claims['user_id']
created=[]
try:
    item={'word':'regression word '+suffix,'translation':'тестовое слово','language':'en','target_language':'ru','source':'lesson','vocabulary_id':'WAH_L2_MP_P1'}
    first=call('POST','/flashcards/bulk',{'items':[item]});created.extend(first.get('items',[]));assert first.get('created_count')==1
    card=first['items'][0]['id'];again=call('POST','/flashcards/bulk',{'items':[item]});assert again.get('skipped_count')==1
    print('PASS legacy Android/iOS bulk payload and duplicate retry',flush=True)
    call('POST','/flashcards/today/'+card,{})
    old=call('POST',f'/flashcards/{card}/review',{'remembered':True,'response_time_ms':100});assert old['item']['total_reviews']==1
    print('PASS legacy review without attempt_id',flush=True)
    payload={'remembered':True,'response_time_ms':120,'attempt_id':str(uuid.uuid4())}
    new=call('POST',f'/flashcards/{card}/review',payload);retry=call('POST',f'/flashcards/{card}/review',payload)
    assert new['item']['total_reviews']==2 and retry['history']['id']==new['history']['id']
    call('POST',f'/flashcards/{card}/review',{**payload,'remembered':False},expected=(400,))
    print('PASS idempotent review and changed-answer conflict',flush=True)
    stats=call('GET','/flashcards/stats');assert stats.get('today_completed')==1 and stats.get('learning_count')==1,stats
    queue=call('GET','/flashcards/today?include_srs=true');selected=next(x for x in queue['items'] if x['id']==card)
    assert selected.get('repetitions')==2 and selected.get('next_review_at')
    print('PASS real SRS counters, schedule projection and pinned queue',flush=True)
    mono={**item,'word':'monolingual '+suffix,'source':'bank','target_language':'en','translation':'an English definition','vocabulary_id':'A1-VOC-001-001'}
    result=call('POST','/flashcards/bulk',{'items':[mono]});created.extend(result.get('items',[]));assert result.get('created_count')==1
    words=call('GET','/vocabulary-bank?cefr_level=A1&locale=en&limit=1');external=words['entries'][0]['external_id']
    path=f'/vocabulary-bank/{external}/activities'
    call('POST',path+'/15/attempts',{'is_correct':True,'score':100,'time_spent_ms':50},expected=(400,))
    legacy=call('POST',path+'/1/attempts',{'is_correct':True,'score':100,'time_spent_ms':50})
    assert legacy.get('can_advance') and legacy.get('is_correct') and legacy.get('assessment_mode')=='practice' and legacy['progress']['current_step']==2,legacy
    second={'is_correct':False,'time_spent_ms':50,'answer':{'validation_version':2,'session_user_id':owner,'attempt_id':str(uuid.uuid4()),'completed':True,'value':''}}
    current=call('POST',path+'/2/attempts',second);assert current.get('can_advance'),current
    print('PASS legacy word practice, new protocol and rejected step skipping',flush=True)
finally:
    for row in created:call('DELETE','/flashcards/'+row['id'],expected=(200,204))
print('ALL PUBLIC API SMOKES PASSED',flush=True)
