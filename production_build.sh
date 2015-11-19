#!/bin/bash
source ./.env

ansible-playbook -i $1, ./ansible/server_setup.yml
ansible-playbook -i $1, ./ansible/new_wordpress_setup.yml --extra-vars "site_name=$1 wordpress_version=$2 edit=False"
