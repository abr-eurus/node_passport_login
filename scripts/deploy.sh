#!/bin/bash

rsync -avz -e "sudo ssh -i /home/ubuntu/ammar-KeyPair.pem" ./ ubuntu@54.164.94.109:/var/www/html
#ssh -i /home/ubuntu/ammar-KeyPair.pem  ubuntu@54.164.94.109 '/var/www/html/install_dependencies.sh'
ssh -i /home/ubuntu/ammar-KeyPair.pem  ubuntu@54.164.94.109 'sudo systemctl restart nodeapp'