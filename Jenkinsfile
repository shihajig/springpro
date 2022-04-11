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
        stage('Deliver') { 
            steps {
                echo 'hello deliver'
            }
        }
    }
}