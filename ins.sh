#!/bin/bash
cd $(cd $(dirname $0); pwd)
install(){
sudo apt update
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt upgrade
sudo apt-get install redis-server
sudo apt-get install liblua5.3-dev
sudo apt install lua5.3
sudo apt install zip
sudo apt install build-essential checkinstall zlib1g-dev -y
sudo apt install g++-4.7 c++-4.7
sudo apt install gcc-4.9
sudo apt upgrade libstdc++6
sudo apt install libreadline-dev libconfig-dev libssl-dev lua5.3 liblua5.3-dev lua-socket lua-sec lua-expat libevent-dev make unzip git redis-server autoconf g++ libjansson-dev libpython-dev expat libexpat1-dev
sudo apt install screen
sudo apt install libnotify-dev
sudo apt install libconfig++9v5 libstdc++6
sudo apt install libconfig++8-dev
sudo apt install lua-lgi
sudo apt install build-essential checkinstall zlib1g-dev -y
mkdir tmp
cd tmp
wget https://luarocks.org/releases/luarocks-3.3.0.tar.gz --no-check-certificate
tar zxpf luarocks-3.3.0.tar.gz
cd luarocks-3.3.0
./configure && make && sudo make install
sudo luarocks install luarocks
sudo luarocks install luasec
sudo luarocks install luasocket
cd ../..
rm -rf tmp
unzip luatele.zip
sudo lua5.3 setup.lua
}
if [ "$1" = "run" ]; then
sudo lua5.3 setup.lua
fi
if [ "$1" = "ins" ]; then
install
cd ..
cd aa
rm -rf luarocks*
sudo lua5.3 setup.lua
fi
