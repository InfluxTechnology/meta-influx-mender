FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

do_install:append() {
    sed -i 's/1800/300/' ${D}/etc/mender/mender.conf	# UpdatePollIntervalSeconds
    sed -i 's/28800/900/' ${D}/etc/mender/mender.conf 	# InventoryPollIntervalSeconds
}