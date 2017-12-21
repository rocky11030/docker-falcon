#!/bin/bash
cd /opt/open-falcon
#grep -Ilr 3306  ./ | xargs -n1 -- sed -i 's/127.0.0.1/{{ falcon_ip }}/g'
grep -Ilr 3306  ./ | xargs -n1 -- sed -i 's/127.0.0.1/{{ falcon_ip }}/'
sed -i 's/127.0.0.1/{{ falcon_ip }}/' /etc/redis/redis.conf
sed -ie 's/smtp_test/{{ smtp_mail }}/; s/test@test.com/{{ user_name }}/; s/pw/{{ pass }}/' /opt/open-falcon/falcon-mail/cfg.json
sed -ie 's/smtp_test/{{ smtp_mail }}/; s/test@test.com/{{ user_name }}/; s/pw/{{ pass }}/' /opt/open-falcon/urlooker/alarm/cfg.json
