#!/bin/bash

virt-install \
--name mini \
--memory 512 \
--vcpus=1 \
--location mini.iso,kernel=linux,initrd=initrd.gz \
--graphics vnc,listen=0.0.0.0 \
--virt-type qemu \
--disk none \
--noautoconsole \
--disk path=/var/lib/libvirt/images/mini.qcow2,size=8,bus=virtio,format=qcow2 \
--initrd-inject=/opt/preseed-mini.cfg \
--extra-args='preseed/file=preseed-mini.cfg auto=true keyboard-configuration/xkb-keymap=en' \
--debug

