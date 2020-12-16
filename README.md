# R7000-touchpad
touchpad driver
下载后解压，以root权限运行install.sh，若提示失败，请检查目录是否完整或手动安装

（一）.自动安装：

$sudo chmod +x install.sh

$sudo ./install.sh

$reboot

将在重启后生效


（二）.手动安装：

1.下载后解压并make

$ make

2.将得到的i2c-hid.ko复制到指定路径

$ sudo cp /path/to/i2c-hid.ko /lib/modules/$(uname -r)/kernel/drivers/hid/i2c-hid/i2c-hid.ko

3.然后添加i2c_hid.polling_mode=1到内核命令行

使用文本编辑器以root身份打开/ etc / default / grub，然后将

GRUB_CMDLINE_LINUX_DEFAULT="quiet splash" 替换为

GRUB_CMDLINE_LINUX_DEFAULT="quiet splash i2c_hid.polling_mode=1"

最后保存更改。

4.最后运行

$ sudo update-grub

$ sudo update-initramfs -u

$reboot

将在重启后生效
