obj-m := hello.o

MDIR := /lib/modules/$(shell uname -r)/build

default:
	$(MAKE) -C $(MDIR) M=$(shell pwd) modules
