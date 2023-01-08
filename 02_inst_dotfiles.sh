## USER
export USER=ec2-user
export HOME=~$USER


## DOTFILES
# backup
mkdir $HOME/GIT/public/DOTFILES/BACKUP/
cd $HOME
mv -f .zsh* .fzf*sh .tmate.conf .p10k.zsh .fzf.*sh $HOME/GIT/public/DOTFILES/BACKUP/
# apply
cd $HOME/GIT/public/DOTFILES
chown -R $USER:$USER .*
cp -pf .zsh* .fzf*sh .tmate.conf .p10k.zsh .fzf.*sh $HOME
