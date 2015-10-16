#!/bin/bash
source ./venv/bin/activate
source ./.env

ansible-playbook -i $1, ./ansible/get_backup.yml --extra-vars "site_name=$1"
