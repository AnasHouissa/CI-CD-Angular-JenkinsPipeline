pipeline {

    agent any

    stages {
            stage('Build Frontend'){
                    steps {
                        git 'https://github.com/AnasHouissa/DevopsProjectFrontend.git'
                        sh 'npm run build'
                    }
            }
    }
}