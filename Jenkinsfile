pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                tar -czf nodeapp.tar.gz config models routes scripts views app.js package.json nodeapp.service
            }
        }

        stage('Test') {
            steps {
                echo 'Running Test Cases...'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying Changes...'
                scp -i /home/ubuntu/ammar-KeyPair.pem nodeapp.tar.gz ubuntu@34.201.117.185:/home/ubuntu
                sh './scripts/deploy.sh'
            }
        }
    }
}