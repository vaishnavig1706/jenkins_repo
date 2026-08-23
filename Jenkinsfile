pipeline{
   agent any
   stages{
    stage('code checkout')
      steps{
        git 'https://github.com/vaishnavig1706/jenkins_repo.git'
      }
    stage('build docker container')
      steps{
        sh 'docker build -t myimage:v1 .'
      }  
    stage('run docker container')
      steps{
        sh 'docker run -d --name vaicon --port 8080:80 myimage:v1'
      }
   } 
}
