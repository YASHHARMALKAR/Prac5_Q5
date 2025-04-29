pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch :'master', url:'https://github.com/YASHHARMALKAR/Prac5_Q5.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                   // bat 'set DOCKER_BUILDKIT=0 && docker build -t devops-node-app:latest .'
                    bat 'set "DOCKER_BUILDKIT=0" && docker build -t devops-node-app:latest .'

                }
            }
        }

        stage('Run Docker Container') {
            steps {
                // Host port 8082 -> Container port 4000
                bat 'docker run -d -p 8082:4000 --name devopscontainer devops-node-app:latest'
            }
        }
    }

    post {
        success {
            echo 'Deployment successful!'
        }
        failure {
            echo 'Deployment failed.'
        }
    }
}
