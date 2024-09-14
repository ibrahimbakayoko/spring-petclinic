pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/ibrahimbakayoko/spring-petclinic.git'
            }
        }
        stage('Build') {
            steps {
                sh './mvnw clean package'  // Adapté pour un projet Java Maven, modifie selon ton environnement
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('myapp-image')  // Créer l'image Docker
                }
            }
        }
    }
}

