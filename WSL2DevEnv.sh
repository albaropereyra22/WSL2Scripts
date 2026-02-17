#! /bin/sh -

# set local
sudo locale-gen "en_US.UTF-8"
#sudo dpkg-reconfigure locales
sudo snap install emacs --classic
sudo apt-get install zsh net-tools;
cd;
mkdir -p opt;
cd opt;
rm -rf ~/opt/zshconf;
git clone git@github.com:AlbaroPereyra22/zshconf.git
chmod u+x ~/opt/zshconf/installer.sh
cd opt/zshconf
./installer.sh
cd;
cd opt;
rm -rf ~/opt/emacsconf;
git clone git@github.com:AlbaroPereyra22/emacsconf.git
chmod u+x ~/opt/emacsconf/installer.sh
cd opt/emacsconf;
./installer.sh
git clone git@github.com:AlbaroPereyra/screenconf.git
mv screenconf/.screenrc ~
