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
               
               withCredentials([string(credentialsId: 'mypassword', variable: 'myvariable')]) {
   					 
   					 
   					 bat 'echo "$myvariable" | docker login --username shihaji --password-stdin'
   					 
					}
				
   				  
						
				
                echo 'logged in docker'
            }
        }
    }
}