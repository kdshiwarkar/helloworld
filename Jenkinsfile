pipeline {
   agent any
      stages {
        stage('checkout') {
          steps {
            checkout scme
          }
        }
        stage('Build') {
          steps {
            sh 'mvn install'
          }
        }
        stage('Docker build') {
          steps {
            sh 'podman build -f dockerfile -t tomcat:02'
          }
        }
        stage('tag to given image') {
          steps {
            sh 'podman tag tomcat:02 docker.io/kunalsh/tomcat:02'
          }
        }
        stage('docker login') {
          steps {
            sh 'podman login docker.io -u kunalsh -p Kunnu@2404'
          }
        }
        stage('image push into dockerhub') {
          steps {
            sh 'podman push docker.io/kunalsh/tomcat:02'
          }
        }
      }
}
            
        
          
          
    
