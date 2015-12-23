FROM fballiano/magento2-apache-php
MAINTAINER Fabrizio Balliano <fabrizio@fabrizioballiano.com>

RUN apt-get update && apt-get install -y cron
ADD ./crontab /crontab.www-data
RUN crontab -u www-data /crontab.www-data

ENTRYPOINT cron -f
CMD []
