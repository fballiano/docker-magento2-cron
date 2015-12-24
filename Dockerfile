FROM fballiano/magento2-apache-php
MAINTAINER Fabrizio Balliano <fabrizio@fabrizioballiano.com>

RUN apt-get update && apt-get install -y cron && apt-get clean
#ADD ./start.sh /start.sh
ADD crontab /var/spool/cron/crontabs/www-data
#RUN chmod +x /start.sh
#RUN touch /var/log/cron.log

#CMD ["/bin/bash", "/start.sh"]
CMD crond -f
