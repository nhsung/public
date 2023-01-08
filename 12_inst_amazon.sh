# $USER
export USER=~ec2-user


# EC2RL
cd $USER/GIT
curl -O https://s3.amazonaws.com/ec2rescuelinux/ec2rl.tgz
tar xzvf ec2rl.tgz
#cd ec2rl-*
#mv ./* /usr/local/bin/
