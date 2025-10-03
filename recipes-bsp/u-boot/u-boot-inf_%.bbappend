require recipes-bsp/u-boot/u-boot-mender.inc

FILESEXTRAPATHS:prepend := "${THISDIR}/${BPN}:"

RPROVIDES_${PN} += "u-boot"

MENDER_UBOOT_STORAGE_DEVICE = "2"
MENDER_UBOOT_AUTO_CONFIGURE = "0"

SRCBRANCH = "mender_v2024.04"
SRCREV = "8ea8912eb1b6c0ccac1b138879b16b64e114e00f"