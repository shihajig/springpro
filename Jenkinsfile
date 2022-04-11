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
               
				
   				  bat 'docker login -u shihaji -p james_bond007'
						
				
                echo 'logged in docker'
            }
        }
    }
}