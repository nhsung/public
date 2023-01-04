## amazon-linux-extras
amazon-linux-extras install nginx1 -y
sleep 10
systemctl start nginx
systemctl enable nginx



## yum

# platform
yum -y install ruby-devel

# admin
yum -y install neovim

# network & storage
yum -y install wireshark nmap hping3 prettyping httping lftp axel

# logs & edit
yum -y install lnav 

# shell
yum -y install ncdu tree most pv dialog

# ripgrep
cd /tmp
wget 'https://github.com/BurntSushi/ripgrep/releases/download/0.5.2/ripgrep-0.5.2-x86_64-unknown-linux-musl.tar.gz'
tar xzvf ripgrep-0.5.2-x86_64-unknown-linux-musl.tar.gz
cd ripgrep-0.5.2-x86_64-unknown-linux-musl
mv rg /usr/local/bin/

# duf
wget https://github.com/muesli/duf/releases/download/v0.6.0/duf_0.6.0_linux_amd64.rpm
rpm -ivh duf_0.6.0_linux_amd64.rpm
