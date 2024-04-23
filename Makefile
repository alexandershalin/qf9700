KERNEL_DIR      := /lib/modules/$(shell uname -r)/build
MODULE_NAME     := qf9700

obj-m           := $(MODULE_NAME).o

all:
	@echo "Building QF9700 USB2NET chip driver..."
	make -C $(KERNEL_DIR) M=$(PWD) modules

clean:
	$(MAKE) -C $(KERNEL_DIR) M=$(PWD) clean
