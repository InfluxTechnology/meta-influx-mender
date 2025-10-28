FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

#SRC_URI:append = ""

do_install:append () {
    echo ${INFLUX_RELEASE} > ${D}/etc/hostname
    sed -i 's/\./\_/' ${D}/etc/hostname
}

#FILES:${PN} += "
#"

# Enable mender-connect service
#SYSTEMD_AUTO_ENABLE = "enable"
#SYSTEMD_SERVICE:${PN} += " mender-connect.service "
