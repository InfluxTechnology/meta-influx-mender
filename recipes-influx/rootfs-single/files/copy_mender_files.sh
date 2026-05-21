#!/bin/sh

/usr/bin/mv /opt/influx/mender/ /data/
/usr/bin/crontab -u root -l |  grep -v "* /usr/sbin/copy_mender_files.sh" |  /usr/bin/crontab -
