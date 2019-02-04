#!/usr/bin/env bash

set -x

#ansible-playbook -i hosts.empty --extra-vars 'prefix={{ playbook_dir }}/temp ssl=true aem_env=prod callback_whitelist=human_log' test-domains.yml --ask-become-pass
ansible-playbook -i hosts.dev --extra-vars 'ssl=false aem_env=dev callback_whitelist=human_log' my-project.yml
#ansible-playbook -i hosts.prod --extra-vars 'ssl=true aem_env=prod callback_whitelist=human_log' my-project.yml
