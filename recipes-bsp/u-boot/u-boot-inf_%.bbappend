require recipes-bsp/u-boot/u-boot-mender.inc

FILESEXTRAPATHS:prepend := "${THISDIR}/${BPN}:"

#SRC_URI += " file://0001-mx8mm-smart_defconfig.patch "
#SRC_URI += " file://0002-mx8mm-influx-rex-smart.patch "
SRC_URI += " file://mender_auto_configured.patch "

MENDER_UBOOT_STORAGE_DEVICE = "2"

MENDER_UBOOT_AUTO_CONFIGURE = "0"
