pipeline {
    agent any
    tools {
        maven 'Maven 3.3.9'
    }
    stages {
        stage ('pull artifact') {
        steps{
            rtDownload (
            serverId: "jenkins-artifactory",
            spec: """{
                "files": [
                    {
                    "pattern": "wajahat/my-app-1.0-SNAPSHOT.jar",
                    "target": "app/"
                    }
                ]
            }"""
        )
        }
    }
        stage ('deploy') {
            steps {
                sh 'scp -v -o StrictHostKeyChecking=no  -i /var/jenkins_home/nouman_pk app/*.jar ubuntu@18.234.68.221:/home/ubuntu/'
            }
        }
 }
}
