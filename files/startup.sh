#!/bin/bash
#
# Copyright (c) 2011, 2019 by Delphix. All rights reserved.
#
# This file is managed by Ansible. Don't make changes here - they will be overwritten.
/usr/local/bin/ansible-playbook /etc/ansible/configure_hosts.yml  --limit localhost &>> startup.log