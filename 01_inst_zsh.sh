## ZSH
yum install zsh util-linux-user -y
## switch to zsh as login shell
sudo chsh -s $(which zsh) ec2-user
## OH-MY-ZSH
sudo su - ec2-user -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
## POWERLEVEL10K
sudo su - ec2-user -c "git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~ec2-user/.oh-my-zsh/custom/themes/powerlevel10k"
## FONTS
sudo su - ec2-user -c "git clone https://github.com/powerline/fonts.git --depth=1 && ./fonts/install.sh"
## FZF
sudo su - ec2-user -c "git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install --all"
sudo su - ec2-user -c "~/.fzf/install --all"


## PLUGIN
sudo su - ec2-user -c "git clone https://github.com/zsh-users/zsh-completions                      ~ec2-user/.oh-my-zsh/custom/plugins/zsh-completions"
sudo su - ec2-user -c "git clone https://github.com/zsh-users/zsh-autosuggestions                  ~ec2-user/.oh-my-zsh/custom/plugins/zsh-autosuggestions"
sudo su - ec2-user -c "git clone https://github.com/zsh-users/zsh-syntax-highlighting.git          ~ec2-user/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"
sudo su - ec2-user -c "git clone https://github.com/zsh-users/zsh-history-substring-search         ~ec2-user/.oh-my-zsh/custom/plugins/zsh-history-substring-search"
sudo su - ec2-user -c "git clone https://github.com/wfxr/forgit                                    ~ec2-user/.oh-my-zsh/custom/plugins/forgit"
sudo su - ec2-user -c "git clone https://github.com/pierpo/fzf-docker                              ~ec2-user/.oh-my-zsh/custom/plugins/fzf-docker"
sudo su - ec2-user -c "git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ~ec2-user/.oh-my-zsh/custom/plugins/fast-syntax-highlighting"
