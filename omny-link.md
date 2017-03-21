# Create new omny server image

Currently just a set of notes. TODO create playbook.

## Install packages

 - mysql-server
 - java 8 care of https://www.google.co.uk/url?sa=t&rct=j&q=&esrc=s&source=web&cd=7&cad=rja&uact=8&ved=0ahUKEwjwuP7nwKfRAhWXelAKHeNeAY8QFghAMAY&url=http%3A%2F%2Fwww.webupd8.org%2F2012%2F09%2Finstall-oracle-java-8-in-ubuntu-via-ppa.html&usg=AFQjCNG-TUwZzvNLlG3lCKSBzA6NyumwyQ&sig2=eYI6l8iivw5Lu1TiO5-4Tw[webupd8] 

## Create db

  - edit appropriately and run /opt/omny-link/sql/create.sql

## Confguration 

 - /etc/omny-link/conf/env.sh 
 - /opt/omny-link/application.properties
 - ln -s /opt/omny-link/omny-link-x.y.jar /home/tstephen/omny-link/omny-link-server-x.y.z.build.jar
 - enable unauthenticated sudo restart

## init scripts

 - /etc/init.d/omny-link

 - ln -s /etc/init.d/omny-link /etc/rc2.d/S92omnylink 
 - ln -s /etc/init.d/omny-link /etc/rc3.d/S92omnylink
 - ln -s /etc/init.d/omny-link /etc/rc4.d/S92omnylink
 - ln -s /etc/init.d/omny-link /etc/rc5.d/S92omnylink

## Deploy latest build

 - Deploy /opt/omny-link/bin/omny-link-restart and check executable
 - Enable unauthenticated sudo on script. Use visudo to  add this _to_the_bottom_
   ```
   ALL ALL = (root) NOPASSWD: /full/path/to/this/script
   ```
 - Configure Jenkins to copy to /home/tstephen/omny-link/

## Mail forwarding

At the moment this is used solely for maintenance tasks to communicate with the Ops team. Instructions https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-postfix-as-a-send-only-smtp-server-on-ubuntu-16-04[here].

## Cron jobs

### Alerts


### Archive old process instances

Run once a week. Note that this needs to be run per-tenant.

```
0 0 * * 1 curl -X GET -u Yl3Ss0miGhToruTTu:u7IcAL5ali7YSmeNAr -H "Accept:application/json" https://api.omny.link/carquake/process-instances/archive
0 0 * * 2 curl -X GET -u erS3STat0uT5PRinDe:raT1eDNeSs1onEspED -H "Accept:application/json" https://api.omny.link/circom/process-instances/archive
```

### Backups

 - create ~/.my.cnf to hold db credentials
 - install db-backups.sh script
 - cron morning and evening
   ```
   0 5 * * * /opt/omny-link/bin/db-backups.sh 
   0 19 * * * /opt/omny-link/bin/db-backups.sh 
   ```

### Carquake call logging

   ```
   curl -X GET -v -u  tstephen:pass -d '{ "startDate": "2017-01-04" }' https://api.omny.link/msg/carquake/carquake.logRequest.json
   ```

## Set up and configure swap

Reference this: https://www.digitalocean.com/community/tutorials/how-to-configure-virtual-memory-swap-file-on-a-vps#7

## Configure unattended upgrades for security patches

Reference: https://help.ubuntu.com/community/AutomaticSecurityUpdates

Basically it boils down to this: 

```
# I found it was already installed, in which case line 1 is unneeded
sudo apt-get install unattended-upgrades
sudo dpkg-reconfigure --priority=low unattended-upgrades
```
