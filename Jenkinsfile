pipeline {
    agent any
   
    stages {
        stage('Build') {
            steps {
                
                bat 'mvn clean package'
            }
        }
        stage('build docker image') {
            steps {
                bat 'docker build -t shihaji/springpro:latest .'
            }
           
        }
        stage('docker login') { 
            steps {
                withCredentials([string(credentialsId: 'docker-password', variable: 'dockerpassword')]) {
    	             bat 'docker login -u shihaji -p'
				}
                echo 'logged in docker'
            }
        }
    }
}