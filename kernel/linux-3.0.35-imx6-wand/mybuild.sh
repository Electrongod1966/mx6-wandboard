#!/bin/sh
export PATH=/opt/arm-none-linux-gnueabi/bin:$PATH


cross=arm-none-linux-gnueabi-

case $1 in
config)
	make ARCH=arm CROSS_COMPILE=${cross} wandboard_defconfig
	;;
build)
	make ARCH=arm CROSS_COMPILE=${cross} uImage
	;;
modules)
	make ARCH=arm CROSS_COMPILE=${cross} modules
	;;
clean)
	make ARCH=arm CROSS_COMPILE=${cross} clean
	;;
distclean)
	make ARCH=arm CROSS_COMPILE=${cross} distclean
	;;
*)
	echo "Plese fallow the bellow supporting commands"
	echo "make ARCH=arm CROSS_COMPILE=${cross} sun4i_defconfig"
	echo "make ARCH=arm CROSS_COMPILE=${cross} uImage"
	echo "ake ARCH=arm CROSS_COMPILE=${cross} modules"
	echo "make ARCH=arm CROSS_COMPILE=${cross} clean"
	echo "make ARCH=arm CROSS_COMPILE=${cross} distclean"
	;;
esac
