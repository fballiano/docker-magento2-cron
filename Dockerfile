FROM fballiano/magento2-apache-php
MAINTAINER Fabrizio Balliano <fabrizio@fabrizioballiano.com>

RUN apt-get update && apt-get install -y cron rsyslog && apt-get clean
ADD crontab /var/spool/cron/crontabs/www-data

ENTRYPOINT cron -f
CMD []
