pipeline {

  agent any
  tools { nodejs "NodeJs" }

  stages {
    
    stage('Build Frontend') {
      steps {
        sh 'npm install' 
        sh 'npm run build'
      }
    }
    
    
    stage("Docker build Frontend"){
       steps {
        sh 'docker build -t devops_front_end .'
        sh 'docker image list'
        sh 'docker tag devops_front_end houissa1998/devops_front_end:latest'
        
        withCredentials([string(credentialsId: 'DockerhubCred', variable: 'PASSWORD')]) {
            sh 'docker login -u houissa1998 -p $PASSWORD'
        }
       }
  }
  
  
  
    stage("Push Frontend Image to Docker Hub"){
      steps {
       sh 'docker push  houissa1998/devops_front_end:latest'
    }
    }
    
    
    
  
  }
  post{
        always{
            sh 'docker logout'
        }
    }
}