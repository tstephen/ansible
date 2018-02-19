# Ansible role to set up a self signed certificate
## Usage
You must set the `ssl_cert_cn` to the common name (FQDN) of the host the certificate is for.
If the certificate and key already exist, they will not be overwritten.

Optionally you can set `ssl_dh_path`. This will enable the generation of Diffie-Hellman parameters at the specified path and create a cronjob that will renew it.

This playbook was only tested on Ubuntu Server 16.04.
