# Chef-Enterprise Vagrant Boxes

This Vagrant Box allows you to have local chef development enviorment.

It includes:


* Chef Enterprise Server
* Workstation( Normally you will run this workstation on your client )
* Simple Node(Can be used to bootstrap and test cookbooks on)

Before launching you may want to Edit chefserver.sh file and change your "yourorgname" to and orgname or you have the option to keep the default.


```bash
chef-server-ctl org-create yourorgname 'Your Organization' --association_user vagrant --filename yourorgname-validator.pem


```

This install can take a couple of minutes so don't kill the vagrant process when it looks like
it is not running.

![Chef Enterprise Installation Fig 1](https://raw.githubusercontent.com/devonartis/vagrant-boxes/master/chef-enterprise/chefInstall1.jpg?token=AEnNsobz23o-tgcKq57Z2ZjC2_1GhR15ks5ZrT8WwA%3D%3D)

Image 2

![Chef Enterprise Installation](https://raw.githubusercontent.com/devonartis/vagrant-boxes/master/chef-enterprise/chefCompleteRubyComplete.jpg?token=AEnNsn4UNSxQQ9Ba78uGP5XMnfdld6qEks5ZrT5CwA%3D%3D)
This chefserver.sh install chef server the process will take a couple of minutes
to install.

##### Once the install is complete take the following steps.



1. Login to chef server at http://10.0.5.20 with username vagrant and password vagrant and download chef-starter kit from your ogranization

2. scp the starter kit to the workstation node @ 10.0.5.30



