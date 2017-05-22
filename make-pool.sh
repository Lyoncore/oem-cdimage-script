#!/bin/sh
mkdir -p $1/pool/extras
cd $1/pool/extras
apt-get download tree htop vim
