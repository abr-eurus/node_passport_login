#!/bin/bash

sudo rsync -avz -e "ssh -i /home/ubuntu/ammar-KeyPair.pem" ./ ubuntu@54.164.94.109:/var/www/html
sudo ssh -i /home/ubuntu/ammar-KeyPair.pem  ubuntu@54.164.94.109 'sudo systemctl restart nodeapp'