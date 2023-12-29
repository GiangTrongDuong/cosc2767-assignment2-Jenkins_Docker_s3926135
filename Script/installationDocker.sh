yum install docker -y
useradd dockeradmin
passwd dockeradmin
rm -r /etc/ssh/sshd_config
cp sshd_config /etc/ssh/
service sshd reload
