pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'pwd'
                sh 'ls -l'
                //sh 'docker run hello-world'
                sh 'docker run --rm -v /var/jenkins_home/workspace/css:/project openpolicyagent/conftest test --policy /project/Docker-security.rego /project/Dockerfile'
                //sh 'docker run --rm  -v $(pwd)/Dockerfile:/project openpolicyagent/conftest test --policy Docker-security.rego Dockerfile'
            }
        }

    }
}
