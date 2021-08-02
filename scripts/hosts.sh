#!/bin/bash

HOSTS=$(head -n7 /etc/hosts)

echo -e "$HOSTS" > /etc/hosts
echo "10.10.10.30 ansible.dev" >> /etc/hosts
echo "10.10.10.31 machine1.dev" >> /etc/hosts
echo "10.10.10.32 machine2.dev" >> /etc/hosts