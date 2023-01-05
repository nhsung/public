## GIT
yum -y install git
mkdir ~/GIT && cd ~/GIT
git init

#### SHELL
## ZSH
yum -y install zsh util-linux-user
# enable zsh login shell
sudo chsh -s $(which zsh) ec2-user
## OH-MY-ZSH
sudo su - ec2-user -c "$(\curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
## FONTS
sudo su - ec2-user -c "git clone https://github.com/powerline/fonts.git --depth=1 && ./fonts/install.sh"
## POWERLEVEL10K
sudo su - ec2-user -c "git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~ec2-user/.oh-my-zsh/custom}/themes/powerlevel10k"
## FZF
sudo su - ec2-user -c "git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install --all"
sudo su - ec2-user -c "~/.fzf/install --all"
