pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "muhamedusama92/jpetstore-app:latest"
    }

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/muhamedusama92/jpetstoreApp-CICD.git'
            }
        }

        stage('Build and Test') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Docker Build and Push') {
            steps {
                sh "docker build -t $DOCKER_IMAGE ."
                sh "docker login -u muhamedusama92 -p your-dockerhub-password"
                sh "docker push $DOCKER_IMAGE"
            }
        }

        stage('Deploy with Ansible') {
            steps {
                sh "ansible-playbook -i inventory deploy.yml"
            }
        }
    }
}

