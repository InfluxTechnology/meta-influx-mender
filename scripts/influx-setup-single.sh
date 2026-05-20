. influx-setup-mender.sh $@

# update conf/local.conf
cat ../sources/meta-influx-mender/templates/local.conf.single >> conf/local.conf

patch -Np1 -r - ../sources/meta-influx-mender/recipes-influx/influx-files/files/Download_Enter_00 < ../sources/meta-influx-mender/templates/Download_Enter.patch
patch -Np1 -r - ../sources/meta-influx-mender/recipes-mender/mender-client/mender_%.bbappend < ../sources/meta-influx-mender/templates/mender-append.patch
