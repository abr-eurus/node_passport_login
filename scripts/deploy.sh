#!/bin/bash

rsync -avz -e "ssh -i /home/ubuntu/ammar-KeyPair.pem" ./ ubuntu@107.23.15.131:/var/www/html
#ssh -i /home/ubuntu/ammar-KeyPair.pem  ubuntu@107.23.15.131 '/var/www/html/install_dependencies.sh'
ssh -i /home/ubuntu/ammar-KeyPair.pem  ubuntu@107.23.15.131 'sudo systemctl restart nodeapp'