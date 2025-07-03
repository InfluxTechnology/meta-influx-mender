DESCRIPTION = "Fake U-Boot provider \
    This recipe avoids replacing of Influx provided u-boot with standard mender boot loader"

PROVIDES += "u-boot virtual/bootloader"
RPROVIDES_${PN} += "u-boot virtual/bootloader"

LICENSE = "MIT"
MENDER_UBOOT_AUTO_CONFIGURE = "0"
