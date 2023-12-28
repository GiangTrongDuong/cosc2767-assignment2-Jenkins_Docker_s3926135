pipeline {
    agent any
    tools {
        maven 'maven 3.9.5'
    }
    stages {
        stage('Clone') {
            steps {
                git clone 'https://github.com/GiangTrongDuong/cosc2767-assignment2-website.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean build'
            }
        }
    }
}