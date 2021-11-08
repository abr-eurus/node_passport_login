pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'tar -czf nodeapp.tar.gz config models routes scripts views app.js package.json nodeapp.service'
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
                sh 'scp -i /home/ubuntu/ammar-KeyPair.pem nodeapp.tar.gz ubuntu@107.23.15.131:/var/www/html/'
//                 sh './scripts/deploy.sh'
            }
        }
    }
}