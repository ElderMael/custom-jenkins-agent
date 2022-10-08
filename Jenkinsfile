pipeline {

    agent any

    triggers {
        pollSCM('* * * * *')
    }

    stages {

        stage('Build Image') {
            steps {
                sh './build.sh'
            }
        } // Build Image

    } // stages

}