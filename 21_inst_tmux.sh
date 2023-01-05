## Packages
yum groupinstall -y "Development Tools"
yum install -y libevent-devel ncurses-devel

## Compile
cd /tmp
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure && make
mv ./tmux /usr/local/bin/

chmod 755 ./tmux_install.sh
./tmux_install.sh

yum -y install tmate

## TPM
sudo su - ec2-user -c "git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm"
