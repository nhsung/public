## USER
export USER=ec2-user
export HOME=~$USER


# EC2RL
cd $HOME/GIT
curl -O https://s3.amazonaws.com/ec2rescuelinux/ec2rl.tgz
tar xzvf ec2rl.tgz
#cd ec2rl-*
#mv ./* /usr/local/bin/
