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
               
				withCredentials([string(credentialsId: 'dockpass', variable: 'mydocker')]) {
   				  bat 'docker login -u shihaji -p ${mydocker}'
						}
				
                echo 'logged in docker'
            }
        }
    }
}