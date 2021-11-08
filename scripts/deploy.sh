#!/bin/bash

sudo rsync -avz -e "ssh -i /home/ubuntu/ammar-KeyPair.pem" ./ ubuntu@34.234.79.69:/var/www/html
sudo ssh -i /home/ubuntu/ammar-KeyPair.pem  ubuntu@34.234.79.69 'sudo systemctl restart nodeapp'