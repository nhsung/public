# $USER
export USER=ec2-user


## DOTFILES
# backup
mkdir ~$USER/GIT/public/DOTFILES/BACKUP/
cd ~$USER
mv -f .zsh* .fzf*sh .tmate.conf .p10k.zsh .fzf.*sh ~$USER/GIT/public/DOTFILES/BACKUP/
# apply
cd ~$USER/GIT/public/DOTFILES
chown -R $USER:$USER .*
cp -pf .zsh* .fzf*sh .tmate.conf .p10k.zsh .fzf.*sh ~$USER/
