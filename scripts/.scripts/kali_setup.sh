#!/usr/bin/env sh

# NOTE: this is intended to be ran manually piece by piece for now

# Initial system updates
cd
sudo apt update
sudo apt upgrade

# Install git and neovim so we can clone and edit things, also manuals
sudo apt install git neovim man

# Clone the dotfiles repo
git clone https://github.com/nmyers217/dotfiles 

# Set up GNU Stow so we can place our dotfiles with sym links
sudo apt install stow

# Unstow the scripts
cd dotfiles
stow scripts
cd

# Configure htop
cd dotfiles
stow htop
sudo apt install htop
cd

# Configure neofetch
cd dotfiles
stow neofetch
sudo apt install neofetch
cd

# Configure ranger
cd dotfiles
stow ranger 
sudo apt install ranger
cd

# NOTE: Now we prepare to switch from the command line to xserver
# Configure window manager (i3)
cd dotfiles
stow X
stow polybar
stow i3
sudo apt install x11-apps polybar rofi hsetroot feh compton i3
cd

### NOTE:
###   - At this point you want to go ahead and start your xserver from windows
###     - In my case i will start x410 on localhost:0, but vcxsrv is an ok free alternative
###   - After you start your xserver you can run the below script to start up i3
###     sh ~/.scripts/wlaunch
###   - In my case though, I'm going to do both these from windows with this script named wsl.vbs
###
### ' This script is meant to be launched from the Windows side, to start up a x410 container
### 
### Set shell = CreateObject("WScript.Shell" ) 
### shell.Run """x410.exe"""
### shell.Run "kali -c ""~/.scripts/wlaunch""", 0
###
###   - After you get the xserver and window manager running you can continue on

# Configure a better terminal emulator (I'm going to use termite)
cd dotfiles
stow termite
cd
# NOTE: this installation process always seems to have issues, so keep a close eye on it and run commands manually if needed
sh ~/.scripts/install_termite.sh 
# NOTE: at this point i open up termite and continue on from there

# Configure zsh and prezto
cd
sudo apt install zsh
zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
chsh -s $(which zsh)
zsh # NOTE: this will be the default on next login
# NOTE: at this point you might want to restart and tinker with .zpreztorc (i change to pure theme and turn on auto complete)

# Configure gtop
sudo apt install nodejs npm # get coffee here...
sudo npm install -g gtop

# TODO: configure my editor (spacemacs, spacevim, vscode, or what?)

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

# Do a final upgrade and clean up
sudo apt update
sudo apt upgrade
sudo apt autoremove

