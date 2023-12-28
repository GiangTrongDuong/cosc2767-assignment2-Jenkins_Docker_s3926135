pipeline {
    agent any
    tools {
        maven
    }
    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/GiangTrongDuong/cosc2767-assignment2-website.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }
    }
}