#!/bin/bash

virt-install \
--name ubuntu \
--memory 1024 \
--vcpus=1 \
--location ubuntu-18.04-server-amd64.iso,kernel=/install/vmlinuz,initrd=/install/initrd.gz \
--graphics vnc,listen=0.0.0.0 \
--virt-type qemu \
--noautoconsole \
--disk path=/var/lib/libvirt/images/ubuntu-server.qcow2,size=7,bus=virtio,format=qcow2 \
--initrd-inject=/opt/preseed.cfg \
--extra-args='preseed/file=/preseed.cfg auto=true keyboard-configuration/xkb-keymap=en' \
--debug

