FROM fballiano/magento2-apache-php
MAINTAINER Fabrizio Balliano <fabrizio@fabrizioballiano.com>

ADD crontab /crontab.www-data
ADD start.sh /start.sh
ADD https://raw.githubusercontent.com/nexcess/magento-turpentine/master/app/code/community/Nexcessnet/Turpentine/Model/Varnish/Admin/Socket.php /varnish.php
ADD updatenodes.php /updatenodes.php

RUN apt-get update && apt-get install -y cron rsyslog && apt-get clean
RUN chmod +x /start.sh
RUN crontab -u www-data /crontab.www-data
RUN touch /var/log/syslog; touch /var/log/cron.log

CMD "/start.sh"
