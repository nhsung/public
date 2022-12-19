# GIT
sudo yum -y install git
mkdir ~/GIT && cd ~/GIT
git init

#### SHELL
## ZSH
sudo yum -y install util-linux-ng
# enable zsh login shell
sudo chsh -s $(which zsh) ec2-user
## OH-MY-ZSH
sudo su - ec2-user -c "$(\curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
## FONTS
sudo su - ec2-user -c "git clone https://github.com/powerline/fonts.git --depth=1"
## POWERLEVEL10K
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
## FZF
sudo su - ec2-user -c "git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf"
sudo su - ec2-user -c "~/.fzf/install --all"
