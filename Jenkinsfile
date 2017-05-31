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
                sh 'mkdir reports'
                sh 'cucumber -f html -o reports/results.html'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying'
            }
        }
    }

    post {
            always {
                archive 'reports/results.html'
            }
    }
}