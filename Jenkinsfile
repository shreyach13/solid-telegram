pipeline {
    agent any

    stages {
        stage('linter') {
            steps {
                sh "make lint"
            }
        }
    }
}
