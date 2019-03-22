#!/bin/bash

#set xorg keyboardmap
sudo rm /etc/X11/xorg.conf.d/00-keyboard.conf
sudo ln -s ~/r79conf/xorg-keyboard-conf /etc/X11/xorg.conf.d/00-keyboard.conf

#xorg intel TearFree
sudo rm /etc/X11/xorg.conf.d/20-intel.conf
sudo ln -s ~/r79conf/xorg-intel-conf /etc/X11/xorg.conf.d/20-intel.conf

#xorg mouse sens fix
sudo rm /etc/X11/xorg.conf.d/99-libinput-custom-config.conf
sudo ln -s ~/r79conf/xorg-mouse-conf /etc/X11/xorg.conf.d/99-libinput-custom-config.conf

#dhcpcd speedhack
sudo rm /etc/dhcpcd.conf
sudo ln -s ~/r79conf/dhcpcd.conf /etc/dhcpcd.conf

#i3
rm ~/.config/i3/config
ln -s ~/r79conf/i3-wm.conf ~/.config/i3/config

#bashrc
rm ~/.bashrc
ln -s ~/r79conf/.bashrc ~/.bashrc

#zsh
rm ~/.zshrc
ln -s ~/r79conf/.zshrc ~/.zshrc

#xfce4-terminal
rm -r ~/.config/xfce4/terminal
ln -s ~/r79conf/terminal ~/.config/xfce4/terminal

#i3status
#ignoring some errors here as they might happen if one runs the script another time
mkdir ~/.config/i3status
rm ~/.config/i3status/config
ln -s ~/r79conf/i3status.conf ~/.config/i3status/config

#xinitrc
rm ~/.xinitrc
ln -s ~/r79conf/.xinitrc ~/.xinitrc

#pikaur
rm ~/.config/pikaur.conf
ln -s ~/r79conf/pikaur.conf ~/.config/pikaur.conf
