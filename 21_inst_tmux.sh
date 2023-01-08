# $USER
export USER=~ec2-user


## Packages
yum groupinstall "Development Tools" -y
yum install libevent-devel ncurses-devel -y

## Compile
cd $USER/GIT
git clone https://github.com/tmux/tmux.git
cd $USER/GIT
sh autogen.sh
./configure && make
mv ./tmux /usr/local/bin/
mkdir ~/.tmux

yum install tmate xdg-utils -y
## TPM
cd $USER/GIT
sudo su - $HOME -c "git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm"

## GIT CLONE
cd $USER/GIT/public/DOTFILES
cp -pf .tmux.conf            $HOME/.tmux/
ln -s $HOME/.tmux/.tmux.conf $HOME/.tmux.conf
