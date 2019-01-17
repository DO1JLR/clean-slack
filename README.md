 SLACK CLEANER
----------------

Die [Toolbox Bodensee e.V.](https://toolbox-bodensee.de) nutzt als einziges kommunikationsmittel den SLACK.
Das macht als Sportverein oder so auch echt sinn, weil es nunmal relativ einfach zu verwenden ist und außer viel RAM
in den Browser zu stecken um das JavaScript auszuführen muss man auch nichts machen um eine
halbwegs gute Chat Erfahrung zu haben.

Doch leider ist Slack nun mal weder Open Source, noch zum selber hosten oder von einem deutschen Unternehmen.


Und da die mehrheit dann auch noch es für eine geile Idee hält, die Nachrichten bis in die Ewigkeit aufzuheben muss dieses Script hier einmal die woche sauber machen!

**DELETE ALL MY MESSAGES**


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

