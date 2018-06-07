#!/bin/bash
mkdir -p ../oem-cdimage-script/pool/extras
PCWD=$PWD
cd ../oem-cdimage-script/pool/extras
#hwe kernel for 16.04
if [ "$OEM_HWE_KERNEL" = "generic-hwe" ] ; then
	apt-get download linux-firmware
	apt-get download linux-generic-hwe-16.04
	apt-get download linux-headers-4.13.0-31
	apt-get download linux-headers-4.13.0-31-generic
	apt-get download linux-headers-generic-hwe-16.04
	apt-get download linux-image-4.13.0-31-generic
	apt-get download linux-image-extra-4.13.0-31-generic
	apt-get download linux-image-generic-hwe-16.04
	apt-get download linux-signed-generic-hwe-16.04
	apt-get download linux-signed-image-4.13.0-31-generic
	apt-get download linux-signed-image-generic-hwe-16.04
fi

cd $PCWD
