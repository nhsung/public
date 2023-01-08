# $USER
export USER=ec2-user


## GIT
yum install git -y


#### SHELL
## ZSH
yum -y install zsh util-linux-user
## switch to zsh as login shell
sudo chsh -s $(which zsh) $USER
## OH-MY-ZSH
sudo su - $USER -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
## POWERLEVEL10K
sudo su - $USER -c "git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~$USER/.oh-my-zsh/custom}/themes/powerlevel10k"
## FONTS
sudo su - $USER -c "git clone https://github.com/powerline/fonts.git --depth=1 && ./fonts/install.sh"
## FZF
sudo su - $USER -c "git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install --all"
sudo su - $USER -c "~/.fzf/install --all"

## PLUGIN
sudo su - $USER -c "git clone https://github.com/zsh-users/zsh-completions                      ${ZSH_CUSTOM:-~$USER/.oh-my-zsh/custom}/plugins/zsh-completions"
sudo su - $USER -c "git clone https://github.com/zsh-users/zsh-autosuggestions                  ${ZSH_CUSTOM:-~$USER/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
sudo su - $USER -c "git clone https://github.com/zsh-users/zsh-syntax-highlighting.git          ${ZSH_CUSTOM:-~$USER/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
sudo su - $USER -c "git clone https://github.com/zsh-users/zsh-history-substring-search         ${ZSH_CUSTOM:-~$USER/.oh-my-zsh/custom}/plugins/zsh-history-substring-search"
sudo su - $USER -c "git clone https://github.com/wfxr/forgit                                    ${ZSH_CUSTOM:-~$USER/.oh-my-zsh/custom}/plugins/forgit"
sudo su - $USER -c "git clone https://github.com/pierpo/fzf-docker                              ${ZSH_CUSTOM:-~$USER/.oh-my-zsh/custom}/plugins/fzf-docker"
sudo su - $USER -c "git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-~$USER/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting"


## GIT CLONE
cd $USER/GIT
git clone https://github.com/nhsung/public.git
cd public/DOTFILES
chown -R $USER:$USER .*
cp -pf .zsh* .fzf*sh .tmate.conf $USER/
cp -pf .p10k.zsh .fzf.*sh        $USER/
