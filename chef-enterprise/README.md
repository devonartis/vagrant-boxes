# Chef-Enterprise Vagrant Boxes

This Vagrant Box allows you to have local chef development enviorment.

It includes:


* Chef Enterprise Server
* Workstation( Normally you will run this workstation on your client )
* Simple Node(Can be used to bootstrap and test cookbooks on)


The install can take a couple of minutes 

![Chef Enterprise Installation](https://raw.githubusercontent.com/devonartis/vagrant-boxes/master/chef-enterprise/chefCompleteRubyComplete.jpg?token=AEnNsn4UNSxQQ9Ba78uGP5XMnfdld6qEks5ZrT5CwA%3D%3D)
This chefserver.sh install chef server the process will take a couple of minutes
to install.

1. Edit chefserver.sh file and change your "yourorgname" to and orgname or you have the option to keep the default.


```bash
chef-server-ctl org-create yourorgname 'Your Organization' --association_user vagrant --filename yourorgname-validator.pem


```

2. Login to chef server with username vagrant and password vagrant and download chef-starter kit from your ogranization

3. scp starter kit to the workstation node

