pipeline {
    agent any

    stages {
        stage('linter') {
            steps {
                sh "git diff master --name-only | grep '.yml$' | grep -v 'meta' | xargs ansible-lint -x 703,701"
            }
        }
    }
}
