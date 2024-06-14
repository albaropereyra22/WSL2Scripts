#! /bin/sh -

# set local
sudo locale-gen "en_US.UTF-8"
#sudo dpkg-reconfigure locales
sudo snap install emacs --classic
sudo apt-get install zsh net-tools
git clone git@github.com:AlbaroPereyra/zshconf.git
chmod u+x zshconf/install.sh
cd zshconf
./install.sh
export TERM=xterm-256color
git clone git@github.com:AlbaroPereyra22/emacsconf.git
chmod u+x emacsconf/installer.sh
cd emacsconf
./installer.sh
sudo apt-get install emacs
git clone git@github.com:AlbaroPereyra/screenconf.git
mv screenconf/.screenrc ~
