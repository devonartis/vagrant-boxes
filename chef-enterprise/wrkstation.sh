#!/usr/bin/env bash


# Setup workstation for Chef this is normally done on your own computer
# Download and install chef development kit
yum install -y wget
yum install -y ruby
yum install -y git
wget https://packages.chef.io/files/stable/chefdk/2.1.11/el/7/chefdk-2.1.11-1.el7.x86_64.rpm
rpm -Uvh  https://packages.chef.io/files/stable/chefdk/2.1.11/el/7/chefdk-2.1.11-1.el7.x86_64.rpm

# configure hosts file for our internal network defined by Vagrantfile.old
echo "Adding vagrant ip to host file"
cat >> /etc/hosts <<EOL

# vagrant environment nodes
10.0.5.20  chefserver.dev
10.0.5.30  chefworkstation.dev
10.0.5.40  chefnode1.dev
EOL

