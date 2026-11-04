pipeline {
    agent { label 'slave1' }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'sudo docker build -t webserver-image .'
            }
        }

        stage('Deploy Container') {
            steps {
                sh '''
                    sudo docker rm -f container1 || true
                    sudo docker run -d --name container1 -p 5000:80 webserver-image
                    sudo docker ps --filter name=container1
                '''
            }
        }
    }
}
