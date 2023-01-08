## USER
export USER=ec2-user
export HOME=~$USER


## Packages
yum groupinstall "Development Tools" -y
yum install libevent-devel ncurses-devel -y

## Compile
cd $HOME/GIT
git clone https://github.com/tmux/tmux.git
cd $HOME/GIT
sh autogen.sh
./configure && make
mv ./tmux /usr/local/bin/
mkdir ~/.tmux

yum install tmate xdg-utils -y
## TPM
cd $HOME/GIT
sudo su - $HOME -c "git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm"

## GIT CLONE
cd $HOME/GIT/public/DOTFILES
cp -pf .tmux.conf            $HOME/.tmux/
ln -s $HOME/.tmux/.tmux.conf $HOME/.tmux.conf
