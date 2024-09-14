#!/bin/bash

# Check if the script is being run as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root."
  exit 1
fi

# Update the GRUB configuration file
echo "Updating GRUB configuration..."
grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg

echo "GRUB Updated!!"
