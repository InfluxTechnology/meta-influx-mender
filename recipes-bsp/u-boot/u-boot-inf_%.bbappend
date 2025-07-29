require recipes-bsp/u-boot/u-boot-mender.inc

FILESEXTRAPATHS:prepend := "${THISDIR}/${BPN}:"

SRC_URI += " file://mender_auto_configured.patch "

MENDER_UBOOT_STORAGE_DEVICE = "2"

MENDER_UBOOT_AUTO_CONFIGURE = "0"
