sudo yum groups install -y Development\ tools
sudo yum install -y cmake
sudo yum install -y python34-{devel,pip}
sudo pip3.4 install neovim --upgrade

# cmake
wget https://github.com/Kitware/CMake/releases/download/v3.20.0-rc3/cmake-3.20.0-rc3.tar.gz
tar -xvzf cmake-3.20.0-rc3.tar.gz
cd cmake-3.20.0-rc3
./bootstrap
make
make install

(
cd "$(mktemp -d)"
git clone https://github.com/neovim/neovim.git
cd neovim
make CMAKE_BUILD_TYPE=Release
sudo make install
)
