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
               
				
   				  bat 'docker login -u shihaji -p 8014ac32-eae5-4c90-88d4-bad61c202639'
						
				
                echo 'logged in docker'
            }
        }
    }
}