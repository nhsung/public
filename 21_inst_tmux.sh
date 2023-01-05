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
mkdir ~/.tmux

yum -y install tmate
yum -y install xdg-open
## TPM
sudo su - ec2-user -c "git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm"

## GIT CLONE
cd /tmp/public/DOTFILES
cp -pf .tmux.conf                ~ec2-user/.tmux/
ln -s ~ec2-user/.tmux/.tmux.conf ~ec2-user/.tmux.conf
