 SLACK CLEANER
----------------

Behandle SLACK wie IRC... 
Also lösche nachrichten nach x zeit...

 Installation:
--------------
Install [slack-cleaner](https://github.com/kfei/slack-cleaner)
```bash
  virtualenv slack
  . slack/bin/activate
  pip install slack-cleaner
```

Create SLACK Token and paste it to slack.cfg:
```bash
echo 'token="token_from_slack" > slack.cfg
```

Add cronjob e.g.:
```
@daily cd /path/to/git; ./delete_history.sh | mail -s "SLACK CLEANUP $(date)" root@example.com
``` 


