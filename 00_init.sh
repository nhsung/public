#### curl -sH "Cache-Control: no-cache, no-store"  https://raw.githubusercontent.com/nhsung/public/master/00_init.sh | bash -s


## TimeZone 
timedatectl set-timezone Asia/Seoul


## GIT CLONE
cd /tmp
git clone https://github.com/nhsung/public.git
cd public/DOTFILES
cp -p .zsh* .fzf*sh .tmate.conf ~ec2-user/
cp -p .p10.zsh .fzf.*sh         ~ec2-user/
cp -p .tmux.conf                ~ec2-user/.tmux/


## fetch run scripts
cd /tmp
#wget https://raw.githubusercontent.com/nhsung/public/master/{01_inst_git_zsh.sh,02_inst_amazon.sh,11_inst_pkgs.sh,sample_curl.sh}
#wget https://raw.githubusercontent.com/nhsung/public/master/{01_inst_git_zsh.sh,02_inst_amazon.sh,11_inst_pkgs.sh,21_inst_tmux.sh,sample_curl.sh}
wget https://raw.githubusercontent.com/nhsung/public/master/\
{01_inst_git_zsh.sh,02_inst_amazon.sh,11_inst_pkgs.sh,21_inst_tmux.sh,31_inst_perf_test.sh,sample_curl.sh}


## Package Repository
amazon-linux-extras enable epel
amazon-linux-extras install epel -y
yum update -y
yum upgrade -y


## run scripts on ec2
cat 01_inst_git_zsh.sh | bash -s
cat 02_inst_amazon.sh | bash -s
cat 11_inst_pkgs.sh | bash -s
cat 21_inst_tmux.sh | bash -s
#cat 22_inst_neovim.sh | bash -s
cat 31_inst_perf_test.sh | bash -s
