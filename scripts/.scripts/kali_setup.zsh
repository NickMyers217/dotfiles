#!/usr/bin/env sh

# NOTE: this is intended to be ran manually piece by piece for now

# Initial system updates
cd
sudo apt update
sudo apt upgrade

# Install some very basic stuff for the tasks ahead
sudo apt install xterm git neovim man

# Clone the dotfiles repo
git clone https://github.com/nmyers217/dotfiles 

# Set up GNU Stow so we can place our dotfiles with sym links
sudo apt install stow

# Unstow the scripts
cd ~/dotfiles
stow scripts
cd

# Configure htop
cd ~/dotfiles
stow htop
sudo apt install htop
cd

# Configure neofetch
cd ~/dotfiles
stow neofetch
sudo apt install neofetch
cd

# Configure ranger
cd ~/dotfiles
stow ranger 
sudo apt install ranger
cd

# Configure the window manager (i3) and its related programs
cd ~/dotfiles
stow X
stow polybar
stow i3
cd
sudo apt install x11-apps polybar rofi hsetroot feh compton
sh ~/.scripts/install_i3gaps.sh # This script will build i3-gaps from source

### NOTE:
###   - At this point you want to go ahead and start your xserver from windows
###     - In my case i will start x410 on localhost:0, but vcxsrv is an ok free alternative
###   - After you start your xserver you can run the below script to start up i3
###     sh ~/.scripts/wlaunch
###   - In my case though, I'm going to do both these from windows with this script named wsl.vbs
###
### ' This script is meant to be launched from the Windows side, to start up a x410 container
### Set shell = CreateObject("WScript.Shell" ) 
### shell.Run """x410.exe"""
### shell.Run "kali -c ""~/.scripts/wlaunch""", 0
###
###   - After you get the xserver and window manager running you can continue on

# Configure a better terminal emulator (I'm going to use alacritty)
cd ~/dotfiles
stow alacritty
cd
sh ~/.scripts/install_alacritty.sh

# Configure zsh and prezto
cd
sudo apt install zsh
zsh # choose option 0
rm .zshrc
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
chsh -s $(which zsh)
zsh # this will be the default on next login
rm .zpreztorc
cd dotfiles
stow zsh
cd
# NOTE: at this point you might want to restart and tinker with .zpreztorc (i change to pure theme and turn on auto complete)

# Configure node, npm stuff, and gtop
sudo apt install nodejs npm # get coffee here...
sudo npm install -g gtop

# Install patched fonts (this takes a while)
cd
git clone https://github.com/ryanoasis/nerd-fonts
cd nerd-fonts
./install Gohu
./install FantasqueSansMono
./install SourceCodePro
./install Terminus
cd
rm -rf nerd-fonts

# TODO: thinking about dumping spacevim for a more custom config
# Configure vim
cd ~/dotfiles
stow spacevim
cd
# This script will install spacevim
curl -sLf https://spacevim.org/install.sh | bash
# NOTE: you have to open and close vim a couple times to let plugins install

# Install vscodium (can't actually use it in wsl, so disabled for now)
#wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | sudo apt-key add -
#echo 'deb https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/repos/debs/ vscodium main' | sudo tee --append /etc/apt/sources.list.d/vscodium.list
#sudo apt update && sudo apt install codium

# TODO: can i install lazygit here?

# Do a final upgrade and clean up
sudo apt update
sudo apt upgrade
sudo apt autoremove

