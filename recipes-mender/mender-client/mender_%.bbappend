FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = "\
  file://0001-rootfs-image.patch \
  file://0002-rootfs-image.patch \
"
#  file://0003-rootfs-image.patch 

do_install:append() {
    sed -i 's/1800/300/' ${D}/etc/mender/mender.conf
}
