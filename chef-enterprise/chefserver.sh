#!/usr/bin/env bash

# install Chef Server 
yum install -y wget
wget https://packages.chef.io/files/stable/chef-server/12.16.2/el/7/chef-server-core-12.16.2-1.el7.x86_64.rpm
rpm -Uvh chef-server-core-12.16.2-1.el7.x86_64.rpm
rm -rf chef-server-core-12.16.2-1.el7.x86_64.rpm
yum install -y ruby
yum install -y git
chef-server-ctl reconfigure 
chef-server-ctl user-create vagrant vagrant vagrant vagrant@vagrant.dev 'vagrant' --filename vagrant-rsa
chef-server-ctl org-create yourorgname 'Your Orgname' --association_user vagrant --filename yourorgname-validator.pem
chef-server-ctl install chef-manage
chef-manage-ctl reconfigure --accept-license


# configure hosts file for our internal network defined by Vagrantfile
echo "Adding vagrant ip to host file"
cat >> /etc/hosts <<EOL

# vagrant environment nodes
10.0.5.20  chefserver.dev
10.0.5.30  chefworkstation.dev 
10.0.5.40  chefnode1.dev
EOL
