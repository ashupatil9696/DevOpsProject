pipeline {
    agent {
        label 'vm'
    }

    stages {
        stage('git checkout') {
            steps {
                git url:'https://github.com/ashupatil9696/DevOpsProject.git', branch: 'main'
            }
        }
        
        stage('build jar') {
            steps {
                sh 'mvn clean install package -DskipTests'
            }
        }
        
        stage('build docker image') {
            steps {
                sh 'docker build -t business-app:v1 .'
            }
        }
        
        stage('run') {
            steps {
                sh 'docker run --name business-app -p 2330:2330 -d business-app:v1'
            }
        }
        
        stage('cleanup') {
            steps {
                cleanWs()
            }
        }
    }
}
