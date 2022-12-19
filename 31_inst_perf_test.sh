sudo su -
amazon-linux-extras install -y epel
yum install -y stress-ng systat atop iotop iperf3


## configure the ATOP and SAR monitoring tools
# https://aws.amazon.com/premiumsupport/knowledge-center/ec2-linux-configure-monitoring-tools/
# AL2
sudo sed -i 's/^LOGINTERVAL=600.*/LOGINTERVAL=60/' /etc/sysconfig/atop
sudo sed -i -e 's|*/10|*/1|' -e 's|every 10 minutes|every 1 minute|' /etc/cron.d/sysstat
sudo systemctl enable atop.service crond.service sysstat.service
sudo systemctl restart atop.service crond.service sysstat.service
