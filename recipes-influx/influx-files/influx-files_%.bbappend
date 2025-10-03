FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:prepend = "\
    file://etc/mender/scripts/Download_Enter_00 \
    file://etc/mender/scripts/Download_Leave_00 \
    file://opt/influx/preserved-files \
    file://opt/influx/release_check.sh \
"