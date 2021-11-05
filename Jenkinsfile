pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'npm i'
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
                sh './scripts/deploy.sh'
            }
        }
    }
}