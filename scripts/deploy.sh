#!/bin/bash

HOST_NAME= "ubuntu@$1"

sudo rsync -avz -e "sudo ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ammar-KeyPair.pem" --rsync-path='sudo rsync' ./ $HOST_NAME:/var/www/html
sudo ssh  -o StrictHostKeyChecking=no -i /home/ubuntu/ammar-KeyPair.pem  $HOST_NAME 'sudo systemctl restart nodeapp'