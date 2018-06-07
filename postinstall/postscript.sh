#!/bin/bash

set -x
exec &> >(tee -a "/var/log/factory.log")

echo "[Run Factory Script]"
ls -l /media/cdrom/pool/extras

REMOVABLE_DRIVES=""
for _device in /sys/block/*/device; do
    if echo $(readlink -f "$_device")|egrep -q "usb"; then
        _disk=$(echo "$_device" | cut -f4 -d/)
        REMOVABLE_DRIVES="$REMOVABLE_DRIVES $_disk"
    fi
done
echo Removable drives found: "$REMOVABLE_DRIVES"

USB_ISO=$(echo "$REMOVABLE_DRIVES" | awk '{ print $1 }' )
echo $USB_ISO

echo "[Mount cdrom]"
#mkdir tmp.mount
#mount /dev/${USB_ISO}1 tmp.mount

echo "[Install extras]"
#apt-get install -y openssh-server

#dpkg -i /media/cdrom/pool/extras/*.deb

echo "[Umount cdrom]"
#umount tmp.mount
#rm -rf tmp.mount

echo "[End Factory Script]"
