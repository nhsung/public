## amazon-linux-extras
amazon-linux-extras install nginx1 -y
sleep 10
systemctl start nginx
systemctl enable nginx



## yum

# admin
yum -y install neovim

# network & storage
yum -y install wireshark nmap hping3 prettyping httping lftp

# logs & edit
yum -y install lnav


# shell
yum -y install tree most

# ripgrep
cd /tmp
wget 'https://github.com/BurntSushi/ripgrep/releases/download/0.5.2/ripgrep-0.5.2-x86_64-unknown-linux-musl.tar.gz'
tar xzvf ripgrep-0.5.2-x86_64-unknown-linux-musl.tar.gz
cd ripgrep-0.5.2-x86_64-unknown-linux-musl
mv rg /usr/local/bin/
