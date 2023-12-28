pipeline {
    agent any
    tools {
        maven 'maven 3.9.5'
        git 'Git'
    }
    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/GiangTrongDuong/cosc2767-assignment2-website.git', git branch: 'main'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean build'
            }
        }
    }
}