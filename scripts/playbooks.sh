#!/bin/bash

MACHINE=ansible
DIR=/vagrant/playbooks
FILES=*.yml

vagrant ssh -c "cd $DIR && ansible-playbook $FILES" $MACHINE