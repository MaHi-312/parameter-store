pipeline {
    agent { label 'workstation'}

    options {
        ansiColor('xterm')
    }

    stages {

        stage('Terraform apply') {
            steps {
               sh 'make'
            }
        }
    }
}