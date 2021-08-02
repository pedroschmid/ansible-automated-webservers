#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt install curl wget vim ansible -y

sudo cp /etc/ansible/hosts /etc/ansible/hosts.bkp
sudo cat /vagrant/files/hosts > /etc/ansible/hosts

sudo cp /etc/ansible/ansible.cfg /etc/ansible/ansible.cfg.bkp
sudo cat /vagrant/files/ansible.cfg > /etc/ansible/ansible.cfg

sudo yes | ssh-keygen -q -t rsa -f /vagrant/keys/ansible -N ''
sudo ssh-keygen -f /vagrant/keys/ansible -e -m pem > /vagrant/keys/ansible.pem