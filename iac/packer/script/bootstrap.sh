#!/bin/bash

# mise à jour dépôts
sudo dnf update -y

# install apache 2.x
sudo dnf install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd

sudo dnf install -y java-1.8.0-amazon-corretto

# install amazon cloud watch agent
sudo dnf install -y amazon-cloudwatch-agent
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -s

# install stress
sudo dnf install -y stress

# install codedeploy agent
sudo dnf install -y ruby
sudo wget https://aws-codedeploy-eu-west-3.s3.eu-west-3.amazonaws.com/latest/install
sudo chmod +x ./install
sudo ./install auto