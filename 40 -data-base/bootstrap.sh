#!/bin/bash


component = $1
dnf install ansible -y

cd /home/ec2-user
git clone  https://github.com/chaitanya77711/Ansible-Roboshop-roles-tf.git

cd Ansible-Roboshop-roles-tf
ansible-playbook -e component=$component roboshop.yaml
