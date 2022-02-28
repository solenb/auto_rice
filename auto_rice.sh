#!/bin/sh

#variables
cr="\033[1;31m"
cg="\033[1;32m"
cb="\033[1;34m"

printf "${cg}[*] Proceeding Will Install Every Package Needed & Will Replaces Your Previous Config \n  Make A Backup Before Running It.\n"
printf "${cr}"
read -p "[*] DO YOU WANT TO PROCEED [Y/N] " allowed

printf "${cg}[*] Updating repositories\n"
pacman --noconfirm -Suy
pacman --noconfirm -S --needed git base-devel yay
printf "${cg}[*] Repositories Updated\n"

printf "${cg}[*] Installing Packages\n"
yay -S  betterlockscreen \
	alacritty \
	autorandr \
	bitwarden \
	bluetooth-autoconnect \
	bpytop \
	chezmoi \
	code \
	nautilus \
	dunst \
	feh \
	neofetch \
	rancher \
	flameshot-git \
	firefox \
	i3-gaps \
	nautilus-nextcloud \
	networkmanager-dmenu-git \
	nfs-utils \
	duf \
	oh-my-zsh \
	onlyoffice-desktopeditors \
	pavucontrol \
	picom-ibhagwan-git \
	playerctl \
	polybar \
	pulseaudio-bluetooth \
	pulseaudio-ctl \
	remmina \
	remmina-plugin-rdesktop \
	rofi \
	rsync \
	samba \
	spotify \
	sshpass \
	sudo \
	stress \
	system-config-printer \
	tmux \
	tree \
	ttf-jetbrains-mono \
	vim \
	wget \
	zathura \
	zsh-autosuggestions-git
printf "${cg}[*] Packages Installed\n"

printf "${cg}[*] Installing Dotfiles\n"
$ sh -c "$(curl -fsLS chezmoi.io/get)" -- init --apply https://github.com/solenb/dotfiles.git
printf "${cg}[*] Dotfiles Installed\n"
