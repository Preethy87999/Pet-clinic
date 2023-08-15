
pipeline{
    agent any
    tools{
        maven 'system maven'
    }
    stages{
        stage('build using maven'){
            steps{
                 checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Preethy87999/Pet-clinic']])
                 sh 'mvn clean install'
            }
            
        }
        stage('docker image'){
            steps{
                sh 'sudo docker build -t preethyselvam/petclinic .'
            }
            
        }
        stage('push to dockerhub'){
            steps{
                script{
                    withCredentials([string(credentialsId: 'password', variable: 'dockerpwd')]) {
                        sh 'sudo docker login -u preethyselvam -p ${dockerpwd}'
                        sh 'sudo docker push preethyselvam/petclinic'
    
                     }       
                }
            }   
        }   
    }    
}

