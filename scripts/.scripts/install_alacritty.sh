#!/usr/bin/env sh

# NOTE: most of this was lifted straight from here:
# https://github.com/alacritty/alacritty/blob/master/INSTALL.mdhttps://github.com/alacritty/alacritty/blob/master/INSTALL.md

# clone the code
cd
git clone https://github.com/alacritty/alacritty.git

# install rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
rustup override set stable
rustup update stable

# install dependencies
sudo apt install -y cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev python3
# install graphics
sudo apt install libgl1-mesa-glx # for nvidia
#sudo apt-get install xserver-xorg-video-intel # for intel


# do the build (we are using cargo to install a deb file)
cd alacritty
cargo install cargo-deb
cargo deb --install -p alacritty

# set the default terminal app
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/alacritty 50

# term info
sudo tic -xe alacritty,alacritty-direct extra/alacritty.info


# clean up
cd
rm -rf alacritty
