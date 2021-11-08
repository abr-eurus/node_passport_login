#!/bin/bash

URL_NODE_APP=34.234.79.69

sudo rsync -avz -e "ssh -i /home/ubuntu/ammar-KeyPair.pem" ./ ubuntu@$URL_NODE_APP:/var/www/html
sudo ssh -i /home/ubuntu/ammar-KeyPair.pem  ubuntu@$URL_NODE_APP 'sudo systemctl restart nodeapp'