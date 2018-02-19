# Ansible role for dovecot
## Usage
To run this playbook, you need to set the`dovecot_postmaster` to the email address of the postmaster for this dovecot instance.
For other variables, have a look in `defaults/main.yml`. By default this role will set up a dovecot that listens on 993 with SSL and on 143 with STARTTLS. To disable this, set the imap/imaps port variable to empty or False.

You will also need to set `dovecot_ssl_key` and `dovecot_ssl_cert` to the path to you SSL key and certificate.

This playbook was only tested on Ubuntu Server 16.04.
