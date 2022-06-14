#!/bin/bash
myuser="user"
ansible-playbook prepare.yaml -i inventory  --ask-pass --ask-become-pass -f 3 --extra-vars "{\"user\":\"${myuser}\"}"

