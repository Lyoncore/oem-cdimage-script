#!/bin/bash
mkdir -p ../oem-cdimage-script/pool/extras
PCWD=$PWD
cd ../oem-cdimage-script/pool/extras
apt-get download tree htop vim
cd $PCWD
