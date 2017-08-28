#!/usr/bin/env bash

# configure hosts file for our internal network defined by Vagrantfile.old
echo "Adding vagrant ip to host file"
cat >> /etc/hosts <<EOL

# vagrant environment nodes
10.0.5.20  chefserver.dev
10.0.5.30  chefworkstation.dev
10.0.5.40  chefnode1.dev
EOL
