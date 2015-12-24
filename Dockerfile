FROM fballiano/magento2-apache-php
MAINTAINER Fabrizio Balliano <fabrizio@fabrizioballiano.com>

ADD crontab /crontab.www-data
ADD start.sh /start.sh

RUN apt-get update && apt-get install -y cron rsyslog && apt-get clean;
RUN chmod +x /start.sh
RUN crontab -u www-data /crontab.www-data

CMD ["/bin/bash", "/start.sh"]
