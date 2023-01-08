# $USER
export USER=~ec2-user


## amazon-linux-extras
amazon-linux-extras install nginx1 -y
sleep 10
systemctl start nginx
systemctl enable nginx


## platform
amazon-linux-extras install ruby3.0 -y
yum install ruby-devel -y

## network & storage
yum install wireshark nmap hping3 prettyping httping lftp axel -y

## logs & edit
yum install lnav jq -y

## shell
yum install ncdu tree most pv dialog entr -y
gem install colorls

## ripgrep
cd $USER/GIT
wget 'https://github.com/BurntSushi/ripgrep/releases/download/0.5.2/ripgrep-0.5.2-x86_64-unknown-linux-musl.tar.gz'
tar xzvf ripgrep-0.5.2-x86_64-unknown-linux-musl.tar.gz
cd ripgrep-0.5.2-x86_64-unknown-linux-musl
mv rg /usr/local/bin/

## duf
cd $USER/GIT
wget https://github.com/muesli/duf/releases/download/v0.6.0/duf_0.6.0_linux_amd64.rpm
rpm -ivh duf_0.6.0_linux_amd64.rpm

# xh - beautiful curl
#curl -sfL https://raw.githubusercontent.com/ducaale/xh/master/install.sh | sh

## pet
cd $USER/GIT
wget https://github.com/knqyf263/pet/releases/download/v0.2.4/pet_0.2.4_linux_amd64.zip
unzip pet_0.2.4_linux_amd64.zip
chmod 755 ./pet
mv pet /usr/local/bin

## bat
cd $USER/GIT
wget https://github.com/sharkdp/bat/releases/download/v0.22.1/bat-v0.22.1-x86_64-unknown-linux-gnu.tar.gz
tar xzvf bat-v0.22.1-x86_64-unknown-linux-gnu.tar.gz
mv bat-v0.22.1-x86_64-unknown-linux-gnu/bat /usr/local/bin/bat

## navi
yum install cargo -y
sudo su - ec2-user -c "cargo install navi"
