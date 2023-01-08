## USER
export USER=ec2-user
export HOME=~$USER


## ZSH
yum install zsh util-linux-user -y
## switch to zsh as login shell
sudo chsh -s $(which zsh) $USER
## OH-MY-ZSH
sudo su - $USER -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
## POWERLEVEL10K
sudo su - $USER -c "git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k"
## FONTS
sudo su - $USER -c "git clone https://github.com/powerline/fonts.git --depth=1 && ./fonts/install.sh"
## FZF
sudo su - $USER -c "git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install --all"
sudo su - $USER -c "~/.fzf/install --all"


## PLUGIN
sudo su - $USER -c "git clone https://github.com/zsh-users/zsh-completions                      $HOME/.oh-my-zsh/custom/plugins/zsh-completions"
sudo su - $USER -c "git clone https://github.com/zsh-users/zsh-autosuggestions                  $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions"
sudo su - $USER -c "git clone https://github.com/zsh-users/zsh-syntax-highlighting.git          $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"
sudo su - $USER -c "git clone https://github.com/zsh-users/zsh-history-substring-search         $HOME/.oh-my-zsh/custom/plugins/zsh-history-substring-search"
sudo su - $USER -c "git clone https://github.com/wfxr/forgit                                    $HOME/.oh-my-zsh/custom/plugins/forgit"
sudo su - $USER -c "git clone https://github.com/pierpo/fzf-docker                              $HOME/.oh-my-zsh/custom/plugins/fzf-docker"
sudo su - $USER -c "git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/fast-syntax-highlighting"
