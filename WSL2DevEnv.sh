#! /bin/sh -
sudo snap install emacs --classic
sudo apt-get install zsh
git clone git@github.com:AlbaroPereyra/zshconf.git
chmod u+x zshconf/install.sh
cd zshconf
./install.sh
git clone git@github.com:AlbaroPereyra/emacsconf.git
chmod u+x emacsconf/installer.sh
cd emacsconf
./installer.sh
sudo apt-get install emacs
