# Chef-Enterprise Vagrant Boxes

This Vagrant Box allows you to have local chef development enviorment.

It includes:


* Chef Enterprise Server
* Workstation( Normally you will run this workstation on your client )
* Simple Node(Can be used to bootstrap and test cookbooks on)


This chefserver.sh install chef server the process will take a couple of minutes
to install.






```bash
aws iam create-role --role-name CodeDeployServiceRole --assume-role-policy-document file://codedeploy/codedeploytrust.json

```
Output ...
Note: The XXXXX in the arn would be your AWS account number
```json
{
    "Role": {
        "AssumeRolePolicyDocument": {
            "Version": "2012-10-17",
            "Statement": [
                {
                    "Action": "sts:AssumeRole",
                    "Principal": {
                        "Service": [
                            "codedeploy.us-east-2.amazonaws.com",
                            "codedeploy.us-east-1.amazonaws.com",
                            "codedeploy.us-west-1.amazonaws.com",
                            "codedeploy.us-west-2.amazonaws.com"
                        ]
                    },
                    "Effect": "Allow",
                    "Sid": ""
                }
            ]
        },
        "RoleId": "AROAI2TLU6VACVU6RM5UM",
        "CreateDate": "2017-05-21T01:36:28.938Z",
        "RoleName": "CodeDeployServiceRole",
        "Path": "/",
        "Arn": "arn:aws:iam::XXXXXXXXX:role/CodeDeployServiceRole"
    }
}
```

* Call the attach role with 
```bash

aws iam attach-role-policy --role-name CodeDeployServiceRole --policy-arn arn:aws:iam::aws:policy/service-role/AWSCodeDeployRole


```

* Check to ensure role exists 

```bash
aws iam get-role --role-name CodeDeployServiceRole --query "Role.Arn" --output text
arn:aws:iam::XXXXXXXXX:role/CodeDeployServiceRole
```



##Tips

######AWS CLI Autocomplete tools


[saws](https://github.com/donnemartin/saws)

[command completer](http://docs.aws.amazon.com/cli/latest/userguide/cli-command-completion.html)

