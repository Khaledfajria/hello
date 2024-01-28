pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'pwd'
                sh 'ls -l'
                //sh 'docker run hello-world'
                sh 'docker run --rm  --volumes-from admin_jenkins_1 openpolicyagent/conftest test --policy /var/jenkins_home/workspace/css/Docker-security.rego /var/jenkins_home/workspace/css/Dockerfile'
            }
        }

    }
}
