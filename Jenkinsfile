pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                
                bat 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                echo 'hello test'
            }
           
        }
        stage('Deliver') { 
            steps {
                echo 'hello deliver'
            }
        }
    }
}