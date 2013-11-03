#include <linux/types.h>
#include <linux/ioctl.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include "gpiodev.h"

int main()
{
int leds[16];
int val = 1;
int fd;
fd = open("/dev/gpiodevice", O_RDWR);
read(fd, (char *)&leds, sizeof(leds));
read(fd, (char *)&leds, sizeof(leds));
memset(leds, 0, sizeof(leds));
leds[5]=1;
write(fd, (char *)&leds, sizeof(leds));
ioctl(fd, GPIODEV_IOC_SET_LED, &val);
close(fd);
}
