pipeline {
    agent any

    stages {
        stage('SCM') {
            steps {
                echo 'Hello DevopsChamps'
                git 'https://github.com/wakaleo/game-of-life.git'
                sh 'ls'
            }
        }
        stage('BUild stage') {
            steps {
                echo 'Building using maven'
                sh 'mvn clean install'
            }
        }
        stage('Deploy Stage') {
            steps {
                echo 'Deploying on Tomcat Application server'
                deploy adapters: [tomcat9(credentialsId: '74f96b95-2ce1-4ba5-8457-7cfa72a3a309', path: '', url: 'http://54.162.14.9:8080/')], contextPath: 'batch2', war: '**/*.war'
            }
        }
        stage('Dummy stage') {
            steps {
                bat ''
            }
        }
    }
}
