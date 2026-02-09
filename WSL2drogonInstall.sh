#! /bin/sh -

sudo apt-get update;
sudo apt install git gcc g++ cmake uuid-dev zlib1g-dev openssl libssl-dev postgresql-all libmariadb-dev libsqlite3-dev libhiredis-dev mariadb-server doxygen libbrotli-dev libc-ares-dev libyaml-cpp-dev;
#sudo mysql_secure_installation;
cd;
mkdir -d opt;
cd opt;
rm -rf ~/opt/jsoncpp;
git clone https://github.com/open-source-parsers/jsoncpp;
cd jsoncpp/;
mkdir build
cd build
cmake ..
sudo make && sudo make install
cd;
cd opt;
rm -rf ~/opt/drogon
git clone https://github.com/drogonframework/drogon
cd drogon
git submodule update --init
mkdir build
cd build
cmake ..
make && sudo make install
#TODO debug to use SQLite.
#sudo echo "appendWindowsPath=false" >> /etc/wsl.conf
dg_ctl -v;
