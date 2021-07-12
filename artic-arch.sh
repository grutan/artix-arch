#!/bin/bash
echo "Getting arch repos"
sudo pacman -S artix-archlinux-support --noconfirm 

echo '
# ARCHLINUX
[extra]
Include = /etc/pacman.d/mirrorlist-arch

[community]
Include = /etc/pacman.d/mirrorlist-arch

[multilib]
Include = /etc/pacman.d/mirrorlist-arch | sudo tee --append /etc/pacman.conf
sudo pacman -Syy
echo "####              arch repos added             ####"
