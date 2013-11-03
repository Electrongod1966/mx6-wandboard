obj-m += gpiodrv.o

CWD := $(shell pwd)
KDIR=$(KERNELDIR)

all: gpiodrv.ko ledwrite


gpiodrv.ko:
	echo $KDIR
	make ARCH=arm CROSS_COMPILE=arm-none-linux-gnueabi- -C $(KDIR) M=$(CWD) modules

ledwrite:
	$(CROSS_COMPILE)gcc -o ledwrite ledwrite.c


clean:
	rm -f *.ko *.o ledwrite  *.mod.c *.order *.symvers

