:'To wipe off the data'
	sudo wipefs -a /dev/sd(X)
:'To check the name of your usb to device to use above'
	lsblk
:'To destroy the MBR , GPT and the boot sectors'
	sudo dd if=/dev/zero of=/dev/sda bs=1M count=20
:'Burning the iso image file'
	sudo dd if=iso_file_name of= /dev/sd(x) bs=4M status= progress oflag=sync
