#!/bin/bash
#date10=`date +'%Y-%m-%d' -d "-10 days"`
date1=`date +'%Y-%m-%d' -d "-1 day"`

date=`date +'%Y-%b-%d'`
cd /home/ec2-user/SKS/DBBACKUP
mysqldump -u ettsuser -h earntalktime.cecz6xcsdkcj.us-east-1.rds.amazonaws.com -P 3306 ett -p'EttP$55w04d' OfferDetails >OfferDetails_$date1.sql
mysqldump -u ettsuser -h earntalktime.cecz6xcsdkcj.us-east-1.rds.amazonaws.com -P 3306 ett -p'EttP$55w04d' AppConfig >AppConfig_$date1.sql
