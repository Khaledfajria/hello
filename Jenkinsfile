pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'pwd'
                sh 'ls -l'
                sh 'docker run --rm  -v $(pwd)/Dockerfile:/project openpolicyagent/conftest test --policy Docker-security.rego Dockerfile'
            }
        }

    }
}
