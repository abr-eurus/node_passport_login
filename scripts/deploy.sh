#!/bin/bash

echo 48f31904357c48daa85b7888f51413e5 | sudo -S rsync -avz -e "ssh -i /home/ubuntu/ammar-KeyPair.pem" ./ ubuntu@54.164.94.109:/var/www/html
#ssh -i /home/ubuntu/ammar-KeyPair.pem  ubuntu@54.164.94.109 '/var/www/html/install_dependencies.sh'
ssh -i /home/ubuntu/ammar-KeyPair.pem  ubuntu@54.164.94.109 'sudo systemctl restart nodeapp'