#!/bin/bash
cp /key/id_rsa /root/.ssh/
# prod dev compare
echo "prod dev compare"
chmod 400 /root/.ssh/id_rsa
python /script/diff_cmp_yaml.py $cmp_slack_url
