pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh "docker run --rm  -v \$(pwd):/project openpolicyagent/conftest test --policy Dockerfile-security.rego Dockerfile"
            }
        }

    }
}