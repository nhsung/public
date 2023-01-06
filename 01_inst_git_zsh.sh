## GIT
yum -y install git
mkdir ~/GIT && cd ~/GIT
git init

#### SHELL
## ZSH
yum -y install zsh util-linux-user
## enable zsh login shell
sudo chsh -s $(which zsh) ec2-user
## OH-MY-ZSH
sudo su - ec2-user -c "$(\curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
## POWERLEVEL10K
sudo su - ec2-user -c "git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~ec2-user/.oh-my-zsh/custom}/themes/powerlevel10k"
## FONTS
sudo su - ec2-user -c "git clone https://github.com/powerline/fonts.git --depth=1 && ./fonts/install.sh"
## FZF
sudo su - ec2-user -c "git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install --all"
sudo su - ec2-user -c "~/.fzf/install --all"

## PLUGIN
sudo su - ec2-user -c "git clone https://github.com/zsh-users/zsh-completions                      ${ZSH_CUSTOM:-~ec2-user/.oh-my-zsh/custom}/plugins/zsh-completions"
sudo su - ec2-user -c "git clone https://github.com/zsh-users/zsh-autosuggestions                  ${ZSH_CUSTOM:-~ec2-user/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
sudo su - ec2-user -c "git clone https://github.com/zsh-users/zsh-syntax-highlighting.git          ${ZSH_CUSTOM:-~ec2-user/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
sudo su - ec2-user -c "git clone https://github.com/zsh-users/zsh-history-substring-search         ${ZSH_CUSTOM:-~ec2-user/.oh-my-zsh/custom}/plugins/zsh-history-substring-search"
sudo su - ec2-user -c "git clone https://github.com/wfxr/forgit                                    ${ZSH_CUSTOM:-~ec2-user/.oh-my-zsh/custom}/plugins/forgit"
sudo su - ec2-user -c "git clone https://github.com/pierpo/fzf-docker                              ${ZSH_CUSTOM:-~ec2-user/.oh-my-zsh/custom}/plugins/fzf-docker"
sudo su - ec2-user -c "git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-~ec2-user/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting"





## GIT CLONE
cd /tmp
git clone https://github.com/nhsung/public.git
cd public/DOTFILES
chown -R ec2-user:ec2-user .*
cp -pf .zsh* .fzf*sh .tmate.conf ~ec2-user/
cp -pf .p10k.zsh .fzf.*sh        ~ec2-user/
