pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                sh 'mvn install'
            }
        }
        stage('Docker build') {
            steps {
                sh 'docker build -f Dockerfile -t tomcat:02 .'
            }
        }
        stage('tag to given image') {
            steps {
                sh 'docker tag tomcat:02 docker.io/kunalsh/tomcat:02'
            }
        }
        stage('docker login') {
            steps {
                sh 'docker login docker.io -u kunalsh -p Kunnu@2404'
            }
        }
        stage('image push into dockerhub') {
            steps {
                sh 'docker push docker.io/kunalsh/tomcat:02'
            }
        }
    }
}
