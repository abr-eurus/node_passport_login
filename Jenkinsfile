pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'npm i'
            }
        }

        stage('Deploy') {
            steps {
                sh 'npm i && touch /var/www/html/abc.txt'
            }
        }
    }
}