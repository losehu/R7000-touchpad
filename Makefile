# SPDX-License-Identifier: GPL-2.0-only
#
# Makefile for the I2C input drivers
#


ifndef KDIR
	KDIR = /lib/modules/`uname -r`/build
endif


obj-m				+= i2c-hid.o

i2c-hid-objs					=  i2c-hid-core.o i2c-hid-dmi-quirks.o
kbuild:
	make -C $(KDIR) M=`pwd`
