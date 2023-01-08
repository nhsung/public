# $USER
export USER=~ec2-user


## DOTFILES
cd $USER/GIT/public
git clone https://github.com/nhsung/public.git .
# backup
cd $USER
mv -f .zsh* .fzf*sh .tmate.conf .p10k.zsh .fzf.*sh $USER/GIT/DOTFILES/BACKUP/
# apply
cd $USER/GIT/public/DOTFILES
chown -R $USER:$USER .*
cp -pf .zsh* .fzf*sh .tmate.conf .p10k.zsh .fzf.*sh $USER/
