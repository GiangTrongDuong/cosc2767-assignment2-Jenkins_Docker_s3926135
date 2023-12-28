pipeline {
    agent any
    tools {
        maven 'maven 3.9.5'
        git 'Git'
    }
    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/GiangTrongDuong/cosc2767-assignment2-website'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean build'
            }
        }
    }
}