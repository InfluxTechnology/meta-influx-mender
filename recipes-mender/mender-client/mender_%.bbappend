FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = "\
  file://0001-rootfs-image.patch \
  file://0002-rootfs-image.patch \
  file://mender-inventory-influx \ 
"

do_install:append() {
    sed -i 's/1800/300/' ${D}/etc/mender/mender.conf	# UpdatePollIntervalSeconds
    sed -i 's/28800/900/' ${D}/etc/mender/mender.conf 	# InventoryPollIntervalSeconds

    install -m 0755 ${WORKDIR}/mender-inventory-influx ${D}/usr/share/mender/inventory/mender-inventory-influx
    rm -fr ${D}/usr/share/mender/inventory/mender-inventory-intervals
    rm -fr ${D}/usr/share/mender/inventory/mender-inventory-rootfs-type
    rm -fr ${D}/usr/share/mender/inventory/mender-inventory-update-modules
}
