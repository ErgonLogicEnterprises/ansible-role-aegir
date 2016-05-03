# Ansible Role: Aegir

[![Build Status](https://travis-ci.org/ErgonLogicEnterprises/ansible-role-aegir.svg?branch=master)](https://travis-ci.org/ErgonLogicEnterprises/ansible-role-aegir)

Installs Aegir, a control panel for deploying and managing large networks of Drupal sites..

## Requirements

A MySQL server is required. This server can be installed on the same machine,
or a separate one (hence why this isn't listed as a dependency.) See the
'Example Playbook' section below for a simple method of installing a mysql
server with Ansible. If this role is not present, then the
`mysql_root_username`and `mysql_root_password` variables must be set.

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):


## Dependencies

  - getvalkyrie.drush (Installs Drush). Note that this role currently defaults
    to the Drush 7.x branch. As a result, Drupal 8 isn't supported by default.

## Example Playbook

    - hosts: servers
      roles:
        - { role: getvalkyrie.mysql }
        - { role: getvalkyrie.aegir }

After the playbook runs, the Aegir front-end site will be available, as will
the Drush extensions (Provision, et. al.) that do the heavy lifting.

## Troubleshooting

ssh-keygen -f "/home/devekko/.ssh/known_hosts" -R valkyrie.local

inside VM

vagrant ssh
sudo ansible-galaxy install -r /vagrant/tests/requirements.yml

sudo ansible-playbook -i tests/inventory tests/test.yml --connection=local

sudo ansible-playbook -i /vagrant/tests/inventory /vagrant/tests/test.yml --connection=local --sudo

ansible-playbook -i /vagrant/tests/inventory /vagrant/tests/test.yml --connection=local --sudo | grep -q 'changed=0.*failed=0' && (echo 'Idempotence test: pass' && exit 0) || (echo 'Idempotence test: fail' && exit 1)


travis Idempotence

ansible-playbook aegir3-playbook.yml --ask-become-pass -i ~/ansible_hosts -vvvv | grep -q 'changed=0.*failed=0' && (echo 'Idempotence test: pass' && exit 0) || (echo 'Idempotence test: fail' && exit 1)


## License

MIT / BSD

## Author Information

This role was created in 2015 by [Christopher Gervais](http://ergonlogic.com/), lead maintainer of the [Aegir Hosting System](http://www.aegirproject.org).
