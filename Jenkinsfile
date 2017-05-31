pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing'
                cucumber
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying'
            }
        }
    }
}