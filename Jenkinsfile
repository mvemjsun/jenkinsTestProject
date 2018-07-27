pipeline {
    agent any
    stages {
            stage('Build') {
                steps {
                    echo "Building in workspace ${WORKSPACE}"
                    git_Stuff()
                }
            }

        stage('Test') {
            steps {
                echo 'Testing'
                sh "${WORKSPACE}/scripts/create_report_dir.sh"
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

def git_Stuff() {
    stash includes: '**', name: 'code', useDefaultExcludes: false
    stash includes: 'revision', name: 'revision'
    stash includes: 'commit-msg', name: 'commit-msg'
}