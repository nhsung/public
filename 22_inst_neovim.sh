sudo yum groups install -y Development\ tools
sudo yum install -y cmake
sudo yum install -y python34-{devel,pip}
sudo pip3.4 install neovim --upgrade

make install
yum install gcc-c++
wget https://cmake.org/files/v3.10/cmake-3.10.0.tar.gz
tar -xvzf cmake-3.10.0.tar.gz
cd cmake-3.10.0
./bootstrap
make
make install
