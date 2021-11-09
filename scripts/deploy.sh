#!/bin/bash

URL_NODE_APP=54.221.132.176

rsync -avz -e "sudo ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ammar-KeyPair.pem" ./ ubuntu@$URL_NODE_APP:/var/www/html
sudo ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ammar-KeyPair.pem  ubuntu@$URL_NODE_APP 'sudo systemctl restart nodeapp'