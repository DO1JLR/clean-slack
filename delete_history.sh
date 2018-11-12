#!/bin/bash
timee="$(date  --date="6 days ago" +%Y%m%d)"
tim3="$(date  --date="15 days ago" +%Y%m%d)"
. slack/bin/activate
. slack.cfg
slack-cleaner --token $token --message --channel floppy-orgel --user "l3d" --before $timee --rate=5 --perform
slack-cleaner --token $token --message --channel general --user "l3d" --before $timee --rate=5 --perform
slack-cleaner --token $token --message --channel hardware --user "l3d" --before $timee --rate=5 --perform
slack-cleaner --token $token --message --channel infrastruktur --user "l3d" --before $timee --rate=5 --perform
slack-cleaner --token $token --message --channel innenarchitektur --user "l3d" --before $timee --rate=5 --perform
slack-cleaner --token $token --message --channel jobs --user "l3d" --before $timee --rate=5 --perform
slack-cleaner --token $token --message --channel makerfaire --user "l3d" --before $timee --rate=5 --perform
slack-cleaner --token $token --message --channel security --user "l3d" --before $timee --rate=5 --perform
slack-cleaner --token $token --message --channel siebdruck --user "l3d" --before $timee --rate=5 --perform
slack-cleaner --token $token --message --channel streaming --user "l3d" --before $timee --rate=5 --perform
slack-cleaner --token $token --message --channel cabal --user "l3d" --before $tim3 --rate=5 --perform

