# curl -sH "Cache-Control: no-cache, no-store"  https://raw.githubusercontent.com/nhsung/public/master/00_init.sh | bash -s

## fetch run scripts
cd /tmp
wget https://raw.githubusercontent.com/nhsung/public/master/{01_inst_git.sh,11_inst_pkgs.sh,sample_curl.sh}


## Package Repository
sudo amazon-linux-extras install epel -y
sudo yum update -y
sudo yum upgrade -y


## run scripts on ec2
cat 01_inst_git.sh | bash -s
cat 11_inst_pkgs.sh | bash -s


## zsh
sudo yum -y install util-linux-ng
# enable zsh login shell
sudo chsh -s $(which zsh) ec2-user
