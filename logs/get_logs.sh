#!
aws logs filter-log-events \
    --start-time `date -d 2015-11-10T14:50:00Z +%s`000 \
    --end-time `date -d 2015-11-10T15:00:00Z +%s`000 \
    --log-group-name /var/log/syslog \
    --filter-pattern ERROR \
    --output text| grep "^EVENTS"|cut -f 5