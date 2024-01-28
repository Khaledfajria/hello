pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh "docker run --rm  -v /jenkins:/project openpolicyagent/conftest test --policy Docker-security.rego Dockerfile"
            }
        }

    }
}
