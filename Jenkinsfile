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
                sh 'npm i'
                sh 'ls /var/www/html'
//                 sh 'touch /var/www/html/abc.txt'
            }
        }
    }
}