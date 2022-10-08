pipeline {

    agent any

    triggers {
        pollSCM('* * * * *')
    }

    stages {

        stage('Build Image') {
            sh './build.sh'
        } // Build Image

    } // stages

}