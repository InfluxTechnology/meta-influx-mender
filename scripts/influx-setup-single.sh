. influx-setup-mender.sh $@

# update conf/local.conf
cat ../sources/meta-influx-mender/templates/local.conf.single >> conf/local.conf
