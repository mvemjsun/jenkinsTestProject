
properties([parameters([string(defaultValue: '2', description: 'Delay in seconds', name: 'TEST_PARAMETER', trim: false)])])

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
                sh "${WORKSPACE}/scripts/create_report_dir.sh"
                sh 'cucumber -f json -o reports/results.json'
            }

            post {
                always {
                    cucumber fileIncludePattern: '*.json', jsonReportDirectory: 'reports/'
                }
            }

        }

        stage('Process parameter') {
            steps {
                process_parameter(${BRANCH_NAME_SELECTED})
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

def process_parameter(parameter) {
    println "process_parameter ${parameter}"
    sleep(parameter)
    println "process_parameter done ..."
}