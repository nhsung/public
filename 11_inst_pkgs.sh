## amazon-linux-extras
sudo amazon-linux-extras install nginx1 -y
sleep 10
sudo systemctl start nginx
sudo systemctl enable nginx



## yum

# admin
sudo yum -y install neovim

# network & storage
sudo yum -y install wireshark nmap hping3 prettyping httping lftp

# shell
sudo yum -y install tree most
