# $USER
export USER=~ec2-user


## neovim
curl -o /etc/yum.repos.d/dperson-neovim-epel-7.repo https://copr.fedorainfracloud.org/coprs/dperson/neovim/repo/epel-7/dperson-neovim-epel-7.repo 
yum install neovim -y
## create dir
sudo su - $HOME -c "mkdir -p ~/.config/nvim"
sudo su - $HOME -c "mkdir -p ~/.local/share/nvim/"


# config
cd $HOME/GIT
# init.vim
cp -pfn ./public/DOTFILES/init.vim $HOME/.config/nvim/
# plugin
cd ./public/DOTFILES/nvim
cp -rpfn session shada site $HOME/.local/share/nvim/


## vim-plug
#sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
#       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# plugin install
sudo su - $HOME -c "nvim +'PlugInstall --sync' +qa"
