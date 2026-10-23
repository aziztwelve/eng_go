#!/usr/bin/env python3
"""Public API regression: only disposable accounts created by this script are deleted."""
import argparse,base64,json,secrets,urllib.request,urllib.error,uuid
parser=argparse.ArgumentParser();parser.add_argument('--base-url',required=True);args=parser.parse_args();base=args.base_url.rstrip('/')
def call(method,path,data=None,token=None,expected=(200,)):
 headers={'Content-Type':'application/json'}
 if token:headers['Authorization']='Bearer '+token
 req=urllib.request.Request(base+path,data=json.dumps(data).encode() if data is not None else None,headers=headers,method=method)
 try:
  with urllib.request.urlopen(req,timeout=35) as response: status=response.status;body=json.loads(response.read() or '{}')
 except urllib.error.HTTPError as error:
  status=error.code
  try:body=json.loads(error.read())
  except ValueError:body={}
 assert status in expected,(method,path,status,body.get('error',''))
 return body
accounts=[]
try:
 for _ in range(2):
  suffix=uuid.uuid4().hex[:12]
  account=call('POST','/auth/register',{'email':f'profile-qa-{suffix}@example.invalid','username':'profile_'+suffix,'password':secrets.token_urlsafe(22)},expected=(201,))
  token=account['access_token'];claims=json.loads(base64.urlsafe_b64decode(token.split('.')[1]+'==='));accounts.append((token,claims['user_id']))
 a,aid=accounts[0];b,bid=accounts[1]
 call('GET','/users/me/profile',expected=(401,))
 result=call('PATCH','/users/me/profile',{'first_name':'Profile QA','last_name':'','gender':'female','date_of_birth':'2000-02-29','timezone':'Asia/Dushanbe','user_id':bid},a)
 assert result['first_name']=='Profile QA' and result['gender']=='female' and result['date_of_birth']=='2000-02-29'
 other=call('GET','/users/me/profile',token=b);assert other.get('first_name')!='Profile QA'
 partial=call('PATCH','/users/me/profile',{'first_name':'Updated QA'},a)
 assert partial['gender']=='female' and partial['date_of_birth']=='2000-02-29'
 assert call('GET','/users/me/profile',token=a)['first_name']=='Updated QA'
 for invalid in [{'first_name':' '},{'gender':'invalid'},{'date_of_birth':'2020-02-30'},{'date_of_birth':'2099-01-01'},{'timezone':'Mars/Olympus'}]:call('PATCH','/users/me/profile',invalid,a,expected=(400,))
 call('PATCH','/users/me/profile',{'gender':'','date_of_birth':''},a)
 cleared=call('GET','/users/me/profile',token=a);assert not cleared.get('gender') and not cleared.get('date_of_birth')
 print('PASS profile persists, partial updates, clears, validation and account isolation',flush=True)
 daily=call('GET','/gamification/xp/daily?days=14',token=a)
 assert len(daily['days'])==14 and daily['timezone']=='Asia/Dushanbe' and all(day['xp']==0 for day in daily['days']), {'days':len(daily['days']),'timezone':daily['timezone'],'xp':sum(day['xp'] for day in daily['days'])}
 call('GET','/gamification/xp/daily?days=999',token=a,expected=(400,))
 history=call('GET','/gamification/xp/history?limit=20&offset=0',token=a);assert not history.get('transactions')
 streak=call('GET','/gamification/streak/history?days=30',token=a);assert len(streak['today'])==10 and streak['timezone']=='Asia/Dushanbe'
 print('PASS daily XP and streak use account time zone; legacy history preserved',flush=True)
 # Existing API endpoints are intentionally used with the installed-client body shape.
 prefs=call('GET','/notifications/preferences',token=a)['prefs'];prefs.pop('user_id',None)
 prefs.update({'practice_reminder_enabled':False,'quiet_hours_start':23,'quiet_hours_end':8,'timezone':'Asia/Dushanbe'})
 call('PUT','/notifications/preferences',prefs,a)
 saved=call('GET','/notifications/preferences',token=a)['prefs'];assert not saved.get('practice_reminder_enabled') and saved['timezone']=='Asia/Dushanbe' and saved['quiet_hours_start']==23
 print('PASS notification preferences persisted',flush=True)
finally:
 for token,owner in accounts:
  call('DELETE','/users/me',token=token)
  call('GET','/users/me/profile',token=token,expected=(401,403))
 print('PASS deletion and rejected access for disposable accounts',flush=True)
print('ALL PROFILE API SMOKES PASSED',flush=True)
