## amazon-linux-extras
amazon-linux-extras install nginx1 -y
sleep 10
systemctl start nginx
systemctl enable nginx


## platform
yum -y install ruby-devel

## admin
yum -y install neovim

## network & storage
yum -y install wireshark nmap hping3 prettyping httping lftp axel

## logs & edit
yum -y install lnav jq

## shell
yum -y install ncdu tree most pv dialog entr

## ripgrep
cd /tmp
wget 'https://github.com/BurntSushi/ripgrep/releases/download/0.5.2/ripgrep-0.5.2-x86_64-unknown-linux-musl.tar.gz'
tar xzvf ripgrep-0.5.2-x86_64-unknown-linux-musl.tar.gz
cd ripgrep-0.5.2-x86_64-unknown-linux-musl
mv rg /usr/local/bin/

## duf
cd /tmp
wget https://github.com/muesli/duf/releases/download/v0.6.0/duf_0.6.0_linux_amd64.rpm
rpm -ivh duf_0.6.0_linux_amd64.rpm

# xh - beautiful curl
#curl -sfL https://raw.githubusercontent.com/ducaale/xh/master/install.sh | sh

## pet
cd /tmp
wget https://github.com/knqyf263/pet/releases/download/v0.2.4/pet_0.2.4_linux_amd64.zip
unzip pet_0.2.4_linux_amd64.zip
chmod 755 ./pet
mv pet /usr/local/bin
