make
sudo cp i2c-hid.ko /lib/modules/$(uname -r)/kernel/drivers/hid/i2c-hid/i2c-hid.ko
sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash i2c_hid.polling_mode=1"/g' /etc/default/grub
sudo update-grub
sudo update-initramfs -u
echo "/***************reboot please!************/"
