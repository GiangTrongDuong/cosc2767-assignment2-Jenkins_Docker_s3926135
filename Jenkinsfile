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
                sh 'mvn clean install'
            }
        }
        stage('Publish Dockerfile Over SSH'){
            steps {
                sshPublisher(publishers: [sshPublisherDesc(configName: 'Docker-Admin', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: '', sourceFiles: 'Dockerfile')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
            }
        }
        stage('Publish Over SSH'){
            steps {
                sshPublisher(publishers: [sshPublisherDesc(configName: 'Docker-Admin', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '''cd /home/dockeradmin
                docker build -t tomcat .
                docker stop tomcat-container
                docker rm tomcat-container
                docker run -d --name tomcat-container -p 8081:8080 tomcat''', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: 'target', sourceFiles: 'target/*.war')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
            }
        }
    }
}