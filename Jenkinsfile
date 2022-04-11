pipeline {
    agent any
    environment{
    	DOCKERHUB_CREDENTIALS = credentials('shihaji-docker')
    }
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
                bat 'docker login -u $DOCKER_CREDENTIALS_USR --password-stdin'
                echo 'logged in docker'
            }
        }
    }
}