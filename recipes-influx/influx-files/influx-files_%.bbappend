FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:prepend = "\
    file://preserved-files \
    file://release_check.sh \
    file://Download_Enter_00 \
    file://Download_Leave_00 \
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

    install -m 0644 ${WORKDIR}/preserved-files ${D}/data/mender/preserved-files
    install -m 0755 ${WORKDIR}/release_check.sh ${D}/opt/influx/release_check.sh
    install -m 0755 ${WORKDIR}/Download_Enter_00 ${D}/etc/mender/scripts/Download_Enter_00
    install -m 0755 ${WORKDIR}/Download_Leave_00 ${D}/etc/mender/scripts/Download_Leave_00
}

FILES:${PN} += "\
    /data/mender/preserved-files \
    /opt/influx/release_check.sh \
    /etc/mender/scripts/Download_Enter_00 \
    /etc/mender/scripts/Download_Leave_00 \
"