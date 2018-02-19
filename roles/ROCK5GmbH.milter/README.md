# Ansible role to set up a milter server
Includes SpamAssassin, Amavis, Razor, Pyzor and OpenDKIM.
## Usage
The `milter_amavis_mailname` variable must be set to the FQDN of the mail host.
Also `milter_sql_spamass_password` and `milter_sql_root_password` must be set, specifying the password for the database user of spamassassin and the root password for the database to create that user. It is recommended to use the [ansible vault](https://docs.ansible.com/ansible/playbooks_vault.html) for password management.

This playbook was only tested on Ubuntu Server 16.04.
