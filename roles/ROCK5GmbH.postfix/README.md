# Ansible role to set up a postfix server
## Usage
To use this role, the following variables **must** be set:
- `postfix_hostname`: the FQDN of the mail server
- `postfix_dh_path`: path to the Diffie-Hellman file (can be generated via `openssl dhparam -out /etc/postfix/dh2048.pem 2048`)
- `postfix_sql_root_password`: the root password for the SQL database (used to set up the user for postfix)
- `postfix_ssl_cert`: path to the SSL cert for postfix to use
- `postfix_ssl_key`: path to the SSL key for postfix to use

Additionally, you may want to set these variables:
- `postfix_smtpd_milter` : list of milters, either socket prefixed with `unix:` or IP address prefixed with `tcp:`, see [here](http://www.postfix.org/postconf.5.html#smtpd_milters) for more info
- `postfix_non_smtpd_milter`: list of milters for messages that, either socket prefixed with `unix:` or IP address prefixed with `tcp:`, see [here](http://www.postfix.org/postconf.5.html#non_smtpd_milters) for more info
- `postfix_submission_milter`: list of milters that only run on the submission port, you can use this to put you mails through a skim milter but not through spamassassin
- `postfix_public_ip`: public IP of the postfix server, default is the ansible fact `ansible_default_ipv4.address`

For additional variables check the `defaults/main.yml` file.

This playbook was only tested on Ubuntu Server 16.04.
