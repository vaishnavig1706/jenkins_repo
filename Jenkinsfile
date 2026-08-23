pipeline {
    agent any

    stages {

        stage('Code Checkout') {
            steps {
                git 'https://github.com/vaishnavig1706/jenkins_repo.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t myimage:v1 .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run -d --name vaicon -p 8080:80 myimage:v1'
            }
        }
    }
}
