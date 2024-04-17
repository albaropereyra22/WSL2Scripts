#! /bin/sh -

sudo apt-get update
sudo apt install git gcc g++ cmake uuid-dev zlib1g-dev openssl libssl-dev postgresql-all libmariadb-dev libsqlite3-dev libhiredis-dev
git clone https://github.com/open-source-parsers/jsoncpp
cd jsoncpp/
mkdir build
cd build
cmake ..
sudo make && sudo make install
cd ../..
git clone https://github.com/drogonframework/drogon
cd drogon
git submodule update --init
mkdir build
cd build
cmake ..
make && sudo make install
# To use SQLite.
# debug
sudo echo "appendWindowsPath=false" >> /etc/wsl.conf
dg_ctl

