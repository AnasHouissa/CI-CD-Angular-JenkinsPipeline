pipeline {

    agent any

    stages {
            stage('Build'){
                    steps {
                        git 'https://github.com/AnasHouissa/DevopsProjectFrontend.git'
                        sh 'npm install'
                        sh 'npm build'
                    }
            }
    }
}