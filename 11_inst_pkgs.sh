## amazon-linux-extras
sudo amazon-linux-extras install nginx1 -y
sleep 10
sudo systemctl start nginx
sudo systemctl enable nginx



## yum

# admin
sudo yum -y install neovim tmux tmate

# performance
sudo yum -y install stress-ng fio

# monitoring
sudo yum -y install atop
sudo systemctl enable atop
sudo systemctl start atop

sudo yum -y install nmon htop

# network & storage
sudo yum -y install wireshark nmap hping3 iperf3 \
prettyping httping lftp \
ioping

# shell
sudo yum -y install tree
