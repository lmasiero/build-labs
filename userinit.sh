#!/bin/bash
#created by lucas.masiero@gartner.com / @lucasmasiero

yum install -y vim htop telnet tcpdump wget net-tools ntp telnet tcpdump traceroute git tmux

mkdir /opt/sysadm; cd /opt/sysadm
# git clone 
sudo sh -c "echo 1 > /proc/sys/net/ipv4/ip_forward"
sed -i 's/#AllowTcpForwarding yes/AllowTcpForwarding yes/g' /etc/ssh/sshd_config

/bin/bash /opt/eks-admin-bootstrap.sh

u=lmasiero


useradd $u
mkdir -p /home/$u/.ssh
mkdir -p /home/$u/.kube
rm -rf  /home/$u/.kube/config
cp ~/.kube/config /home/$u/.kube/config
> /home/$u/.ssh/authorized_keys
sudo tee /home/$u/.ssh/authorized_keys <<-'EOF'
ssh-rsa 112
EOF
chmod 600 /home/$u/.ssh/authorized_keys
chown -R $u:$u /home/$u
echo "$u ALL=(root) NOPASSWD:ALL" | sudo tee -a /etc/sudoers.d/$u

mkdir -p ~/.aws/
tee ~/.aws/config <<-'EOF'
[profile default]
region = us-east-1
EOF

