require recipes-bsp/u-boot/u-boot-mender.inc

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://mender_configure.patch"

MENDER_UBOOT_STORAGE_DEVICE_imx8mm-smart = "2"

MENDER_UBOOT_AUTO_CONFIGURE = "0"
