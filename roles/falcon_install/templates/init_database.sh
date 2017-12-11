#!/bin/bash
cd /opt/open-falcon
#grep -Ilr 3306  ./ | xargs -n1 -- sed -i 's/127.0.0.1/{{ falcon_ip }}/g'
grep -Ilr 3306  ./ | xargs -n1 -- sed -i 's/127.0.0.1/{{ falcon_ip }}/'

