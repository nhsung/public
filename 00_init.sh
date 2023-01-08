#### curl -sH "Cache-Control: no-cache, no-store"  https://raw.githubusercontent.com/nhsung/public/master/00_init.sh | bash -s

# $USER
export USER=~ec2-user


## TimeZone 
timedatectl set-timezone Asia/Seoul


## fetch run scripts
#wget -P $USER/GIT https://raw.githubusercontent.com/nhsung/public/master/{01_inst_git_zsh.sh,02_inst_amazon.sh,11_inst_pkgs.sh,21_inst_tmux.sh,22_inst_neovim.sh,sample_curl.sh}

#wget -P $USER/GIT https://raw.githubusercontent.com/nhsung/public/master/{01_inst_git_zsh.sh,02_inst_amazon.sh,11_inst_pkgs.sh,21_inst_tmux.sh,22_inst_neovim.sh,sample_curl.sh}

## Package Repository
amazon-linux-extras enable epel
amazon-linux-extras install epel -y
yum install epel-release -y
yum update -y
yum upgrade -y


## run Scripts
mkdir -p $USER/GIT/public/
cd $USER/GIT/public/
git clone https://github.com/nhsung/public.git .
#ls *sh | xargs -I {} bash -s {}
cat 00_init.sh           | bash -s
cat 01_inst_zsh.sh       | bash -s
cat 02_inst_dotfiles.sh  | bash -s
cat 11_inst_pkgs.s       | bash -s
cat 12_inst_amazon.sh    | bash -s
cat 21_inst_tmux.sh      | bash -s
cat 22_inst_neovim.sh    | bash -s
cat 31_inst_perf_test.sh | bash -s
#cat 90_inst_dotfiles.sh  | bash -s
#cat sample_curl.sh       | bash -s
