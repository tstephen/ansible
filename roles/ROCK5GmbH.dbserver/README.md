# Ansible role to set up a MySQL/MariaDB server
## Usage
To use this role, you have to set the `dbserver_root_pw` variable to a password for the root user of the DBMS.
If you want to use MariaDB instead of MySQL, simply set the `dbserver_mariadb` variable.

This playbook was only tested on Ubuntu Server 16.04.
