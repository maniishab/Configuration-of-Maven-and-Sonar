pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build the code') {
            steps {
                sh "mvn clean package"
            }
        }

        stage("build the image") {

          steps {
            sh "docker build -t webapp:latest ."
          }
        }

    }
}