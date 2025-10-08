FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:prepend = "\
    file://Download_Enter_00 \
    file://Download_Leave_00 \
    file://preserved-files \
    file://release_check.sh \
"

SRC_URI:append = "\
    file://autostart.patch \
"

do_install:append() {
    if [ ! -d ${D}/opt/influx/ ]; then
        mkdir -p ${D}/opt/influx/
    fi

    if [ ! -d ${D}/etc/mender/scripts/ ]; then
        mkdir -p ${D}/etc/mender/scripts/
    fi

    if [ ! -d ${D}/data/mender/ ]; then
        mkdir -p ${D}/data/mender/
    fi

    install -m 0755 ${WORKDIR}/Download_Enter_00 ${D}/etc/mender/scripts/Download_Enter_00
    install -m 0755 ${WORKDIR}/Download_Leave_00 ${D}/etc/mender/scripts/Download_Leave_00
    install -m 0644 ${WORKDIR}/preserved-files ${D}/data/mender/preserved-files
    install -m 0755 ${WORKDIR}/release_check.sh ${D}/opt/influx/release_check.sh
}

FILES:${PN} += "\
    /etc/mender/scripts/Download_Enter_00 \
    /etc/mender/scripts/Download_Leave_00 \
    /data/mender/preserved-files \
    /opt/influx/release_check.sh \
"

