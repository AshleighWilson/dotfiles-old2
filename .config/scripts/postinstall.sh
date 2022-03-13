#!/bin/sh

# set -e
clear

whiptail --msgbox --title "Arch Post Installation Script" "Welcome to the Arch Linux post installation script." 20 60 --ok-button "Next"

# Obtain user password. This is used for running commands as root via sudo.
PASSWORD=$(whiptail --title "User Password" --passwordbox "Please provide your user password. This is required to run commands as root via sudo." 10 60 3>&1 1>&2 2>&3) 
if [ $? -ne 0 ]; then
  echo "Installer cancelled. Exiting."
  exit 1
else
	echo $PASSWORD | sudo -S echo "Authentication successful."
fi

# Choose the configuration to install.
DEVICE=$(whiptail --title "Configuration Selection" --menu "Choose the configuration for the installer." 20 60 10 3>&1 1>&2 2>&3 \
	"MBP" "MacBookPro 14,2 Installation" \
	"Fractal" "Desktop PC Installation")

if [ $? -ne 0 ]; then
  echo "No device selected. Exiting."
  exit 1
fi

# Install WiFi fix if required.
if [[ $DEVICE == "MBP" ]]; then
	if [ ! -e /lib/firmware/brcm/brcmfmac43602-pcie.txt ]; then
		WIFIFIX=$(whiptail --title "MBP 14,2 WiFi Fix" --yesno "The MBP 14,2 WiFi fix has not been found.\nDo you want to install it?" 10 60 10 3>&1 1>&2 2>&3)
		if [ $? -eq 0 ]; then
  			echo $PASSWORD | sudo -k -S cp $HOME/.config/custom/brcmfmac43602-pcie.txt /lib/firmware/brcm
			if [ $? -ne 0 ]; then
				echo "Error installing MacBookPro WiFi Fix. Exiting."
				exit 1
			fi
		fi

		REBOOT=$(whiptail --title "Reboot" --yesno "WiFi fix installed. Do you want to reboot for changes to take effect?" 10 60 10 3>&1 1>&2 2>&3)
		if [ $? -eq 0 ]; then
  			echo "\nRebooting.."
			reboot
		fi
	fi
fi

# Update system packages.
UPDATE=$(whiptail --title "Update System" --yesno "Do you want to update the system packages?" 10 60 10 3>&1 1>&2 2>&3)
if [ $? -eq 0 ]; then
	# echo $PASSWORD | sudo -k -S pamac update --no-confirm
	paru
	if [ $? -ne 0 ]; then
		echo "Update failed. Exiting."
		exit 1
	fi
fi

# Generic options
OPTIONS=($(whiptail --title "Generic Options" --checklist --separate-output "Choose the options to install/configure" 20 70 10 3>&1 1>&2 2>&3 \
	"PACMAN_MIRRORS" "Find fastest mirrors for pacman" OFF \
	"PLANK_CONFIG" "Load plank congifuration" OFF \
	"ESPANSO_SERVICE" "Enable the espanso user service" OFF \
	))

for choice in "${OPTIONS[@]}"; do
	case $choice in
	    "PACMAN_CONFIG")
			curl -s "https://archlinux.org/mirrorlist/?country=GB&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 -
			;;
	    "PLANK_CONFIG")
			cat $HOME/.config/plank/config.ini | dconf load /net/launchpad/plank/docks/
			;;
	    "ESPANSO_SERVICE")
			systemctl --user enable --now espanso.service
			;;
	esac
done

# MBP specific options for Arch based distro
if [[ $DEVICE == "MBP" ]]; then
	MBP_OPTIONS=($(whiptail --title "MBP Specific Options" --checklist --separate-output "Choose the options to install/configure" 20 70 10 3>&1 1>&2 2>&3 \
		"TOUCHBAR" "MacBook Pro 14,2 Touchpad Driver" OFF \
		"SOUND" "Apple MacBook 14,2 Soundcard Drivers" OFF))

	for mbp_choice in "${MBP_OPTIONS[@]}"; do
		case $mbp_choice in
			"TOUCHBAR")
				# paru -S macbook12-spi-driver-dkms
				sudo mount /dev/nvme0n1p1 /mnt
				sudo cp -R AppleEFI/Apple /mnt/EFI/
				sudo umount /mnt
				systemctl --user enable mbp-startup.service
				;;
			"SOUND")
				# git clone https://github.com/AshleighWilson/snd_hda_macbookpro
				cd $HOME/Apps/snd_hda_macbookpro
				sudo ./install.cirrus.driver.sh
				sudo sh -c 'echo "blacklist snd_hda_codec_cs8409" >> /etc/modprobe.d/blacklist.conf'
				;;
		esac
	done
fi

# Disable this script from running on login.
DISABLE_POSTINSTALL=$(whiptail --title "Disable Post Install" --yesno "Do you want to disable this post installer on log in?" 10 60 10 3>&1 1>&2 2>&3)
if [ $? -eq 0 ]; then
	rm ~/.config/autostart/PostInstall.desktop
fi
# Install software
# BASE_SOFTWARE=($(whiptail --title "Software" --checklist --separate-output "Choose the software to install" 20 70 10 3>&1 1>&2 2>&3 \
# 	"ESPANSO" "Privacy focused text expander" ON \
# 	"KEEPASSXC" "KeePassXC password manager" OFF \
# 	"NEXTCLOUD" "NextCloud client" OFF \
# 	"NERD FONTS" "Selection of Nerd Fonts" ON \
# 	"NORDIC_THEME" "Nordic theme for XFCE" ON \
# 	"TIMESHIFT" "Timeshift backups" ON \
# 	"ULAUNCHER" "Application launcer" ON \
# 	"DISCORD" "Chat application" ON \
# 	"ZSH_PURE" "Pure prompt for ZSH" ON \
# 	"PLYMOUTH" "Startup screens" OFF \
# 	"STEAM" "Steam" OFF \
# 	"SPICE-AGENT" "Spice VDA Agent" OFF \
# 	"UNETBOOTIN" "USB Imaging" OFF \
# 	"VIRT-MANAGER" "KVM/QEMU Virtualisation" OFF \
# 	"XBOXDRV" "XBOX Controller Driver" OFF \
# 	))

# OPT_SOFTWARE=()

# SOFTWARE=(
    # discord 
	# keepass-xc
	# nerd-fonts-noto-sans-mono
	# nerd-fonts-roboto-mono
	# nerd-fonts-terminus
	# nordic-theme-git
	# tela-icon-theme
	# timeshift
	# timeshift-autosnap
	# ulauncher
	# xfce4-pulseaudio-plugin-git
	# zsh-pure-prompt-git
    # lib32-nvidia-utils
    # libvirt
	# linux-headers
	# linux-lts-headers
    # nvidia-settings
    # plymouth-git 
    # steam 
    # spice-vdagent
    # unetbootin 
    # virt-manager 
    # xboxdrv 
# 	# zinit-git
# )
exit 0
