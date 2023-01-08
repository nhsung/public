yum install sysstat atop --enablerepo=epel -y
yum install stress-ng fio iotop ioping iperf3 htop -y


## configure the ATOP and SAR monitoring tools
# https://aws.amazon.com/premiumsupport/knowledge-center/ec2-linux-configure-monitoring-tools/
# AL2
sed -i 's/^LOGINTERVAL=600.*/LOGINTERVAL=60/' /etc/sysconfig/atop
sed -i -e 's|*/10|*/1|' -e 's|every 10 minutes|every 1 minute|' /etc/cron.d/sysstat
systemctl enable atop.service crond.service sysstat.service
systemctl restart atop.service crond.service sysstat.service
