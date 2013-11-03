#!/bin/sh
export PATH=$PATH:/opt/tisdk/linux-devkit/bin
export KERNELDIR=/opt/git/linux-am335x/linux-3.2-calixto


case $1 in
build)
make ARCH=arm CROSS_COMPILE=arm-arago-linux-gnueabi- KERNELDIR=$(KERNELDIR)
;;
clean)
make ARCH=arm CROSS_COMPILE=arm-arago-linux-gnueabi- KERNELDIR=$(KERNELDIR) clean
esac

