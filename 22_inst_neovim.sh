## neovim
curl -o /etc/yum.repos.d/dperson-neovim-epel-7.repo https://copr.fedorainfracloud.org/coprs/dperson/neovim/repo/epel-7/dperson-neovim-epel-7.repo 
yum -y install neovim
## create dir
sudo su - ec2-user -c "mkdir -p ~/.config/nvim"
sudo su - ec2-user -c "mkdir -p ~/.local/share/nvim/"


# vim-plug
#sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
#       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
sudo su - ec2-user -c "nvim +'PlugInstall --sync' +qa"


cd /tmp
# init.vim
cp -p ./public/DOTFILES/init.vim ~ec2-user/.config/nvim/
# plugin
cd ./public/DOTFILES/nvim
cp -rpfn session shada site ~ec2-user/.local/share/nvim/
