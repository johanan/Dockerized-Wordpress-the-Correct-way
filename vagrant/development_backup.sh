#!/bin/bash
source ../.env

vagrant up

export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook --user=vagrant --inventory-file=./.vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory ../ansible/get_backup.yml --extra-vars "site_name=$1"
