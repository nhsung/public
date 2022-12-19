# Packages
sudo yum groupinstall -y "Development Tools"
sudo yum install -y libevent-devel ncurses-devel

# Compile
cd /tmp
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure && make
sudo cp -p ./tmux /usr/local/bin/
END

chmod 755 ./tmux_install.sh
./tmux_install.sh

yum -y install tmate

# TPM
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
