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
        // stage ('deploy') {
        //     steps {
        //         sh 'scp -v -o StrictHostKeyChecking=no  -i /var/jenkins_home/nouman_pk.pem app/* ubuntu@18.234.68.221:/home/ubuntu/'
        //         sh 'ls'
        //     }
        // }
        stage('transfer artifacts') {
                    steps {
                          sshPublisher(
                          publishers:
                          [sshPublisherDesc
                          (configName: 'ubuntu',
                           transfers: [sshTransfer(
                           excludes: '',
                           execCommand: 'sudo apt install default-jre; sudo ./tmp/tmp/deploy.sh',
                           execTimeout: 35000,
                           flatten: false,
                           makeEmptyDirs: true,
                           noDefaultExcludes: false,
                           patternSeparator: '[, ]+',
                           remoteDirectory: '/tmp',
                           remoteDirectorySDF: false,
                           removePrefix: '', sourceFiles: '**/*')],
                           usePromotionTimestamp: false,
                           useWorkspaceInPromotion: false,
                           verbose: true)])
                          }
              }
 }
}
