pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo "Building in workspace ${WORKSPACE}"
            }
        }
        stage('Test') {
            steps {
                echo 'Testing'
                sh './scripts/create_report_dir.sh'
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
