#!/bin/bash
source ../.env

rm -rf ./vmwordpress/*

vagrant up

export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook --user=vagrant --inventory-file=./.vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory ../ansible/new_wordpress_setup.yml --extra-vars "site_name=$1 wordpress_version=$2 edit=True"

sudo ssh -p 2222 -gNfL 80:localhost:80 vagrant@localhost -i .vagrant/machines/default/virtualbox/private_key -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no
