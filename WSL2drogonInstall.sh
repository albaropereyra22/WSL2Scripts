#! /bin/sh -

sudo apt-get update;
sudo apt install git gcc g++ cmake uuid-dev zlib1g-dev openssl libssl-dev postgresql-all libmariadb-dev libsqlite3-dev libhiredis-dev mariadb-server doxygen curl zip unzip tar pkg-config;
#sudo mysql_secure_installation;
cd;
git clone https://github.com/open-source-parsers/jsoncpp;
cd jsoncpp/;
mkdir build
cd build
cmake ..
sudo make && sudo make install
cd;
git clone https://github.com/Microsoft/vcpkg.git
cd vcpkg
./bootstrap-vcpkg.sh
./vcpkg integrate install
./vcpkg install brotli
cd;
git clone https://github.com/drogonframework/drogon
cd drogon
git submodule update --init
mkdir build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=~/vcpkg/scripts/buildsystems/vcpkg.cmake ..
make && sudo make install
# To use SQLite.
# debug
sudo echo "appendWindowsPath=false" >> /etc/wsl.conf
dg_ctl -v;
