FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = "\
  file://0001-rootfs-image.patch \
  file://0002-rootfs-image.patch \
"
#  file://0003-rootfs-image.patch 