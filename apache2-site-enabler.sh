#!/bin/bash

#This script is used to activate all apache2 site config file

sudo a2enmod rewrite
sudo systemctl restart apache2
cd /etc/apache2/sites-available
for a in `ls -1`; do sudo a2ensite $a; done
sudo apache2ctl configtest
sudo systemctl restart apache2

