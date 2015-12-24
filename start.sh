#!/bin/bash

rsyslogd
cron

tail -f /var/log/syslog /var/log/cron.log
