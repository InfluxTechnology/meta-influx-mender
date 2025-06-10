require recipes-bsp/u-boot/u-boot-mender.inc

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += " file://0001-mx8mm-smart_defconfig.patch "
SRC_URI += " file://0002-mx8mm-smart_defconfig.patch "

MENDER_UBOOT_STORAGE_DEVICE_imx8mm-smart = "2"

MENDER_UBOOT_AUTO_CONFIGURE = "0"
