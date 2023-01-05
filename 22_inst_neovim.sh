## neovim
curl -o /etc/yum.repos.d/dperson-neovim-epel-7.repo https://copr.fedorainfracloud.org/coprs/dperson/neovim/repo/epel-7/dperson-neovim-epel-7.repo 
yum -y install neovim
## create dir
mkdir ~/.config/nvim
mkdir ~/.local/share/nvim/


# vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim +'PlugInstall --sync' +qa


cd /tmp
# init.vim
cp -p ./public/DOTFILES/init.vim ~/.config/nvim/
# plugin
cd ./public/DOTFILES/nvim
cp -rp session shada site ~/.local/share/nvim/
