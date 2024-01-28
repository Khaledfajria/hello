pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh "ls -la"
                sh "docker run --rm  -v \$(pwd):/project openpolicyagent/conftest test --policy Docker-security.rego Dockerfile"
            }
        }

    }
}