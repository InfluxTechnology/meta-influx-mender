
#
# Menter setup script
#
# i.MX Yocto Project Build Environment Setup Script
#
# Copyright 2025 Influx Techology LTD
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

. influx-setup-release.sh $@

# murata wlan support is under construction
patch -Np1 -r - conf/bblayers.conf < ../sources/meta-influx-mender/templates/bblayers.patch
patch -Np1 -r - ../sources/meta-influx/recipes-influx/images/influx-image-base.bb < ../sources/meta-influx-mender/templates/influx-image-base.patch

# update bblayers.conf
echo " " >> conf/bblayers.conf
echo "# Mender related layers" >> conf/bblayers.conf
#echo "BBLAYERS += \" \${BSPDIR}/sources/meta-mender-community/meta-mender-imx \"" >> conf/bblayers.conf
echo "BBLAYERS += \" \${BSPDIR}/sources/meta-mender/meta-mender-core \"" >> conf/bblayers.conf
#echo "BBLAYERS += \" \${BSPDIR}/sources/meta-mender/meta-mender-demo \"" >> conf/bblayers.conf
echo "BBLAYERS += \" \${BSPDIR}/sources/meta-influx-mender \"" >> conf/bblayers.conf

# update conf/local.conf
cat ../sources/meta-influx-mender/templates/local.conf.append >> conf/local.conf

# update <machine>.conf
echo " " >> ../sources/meta-influx/conf/machine/imx8mm-smart.conf
echo 'IMAGE_BOOTLOADER = ""' >> ../sources/meta-influx/conf/machine/imx8mm-smart.conf
echo 'IPREFERRED_PROVIDER_virtual/bootloader = "u-boot-fake"' >> ../sources/meta-influx/conf/machine/imx8mm-smart.conf

mv ../sources/meta-influx-mender/recipes-bsp/u-boot-fake/ ../sources/meta-influx/recipes-bsp/
cp ../sources/meta-influx-mender/scripts/deploy-image.sh ./

echo ""
echo "Mender integration complete."
echo ""

