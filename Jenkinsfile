pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                //Сборка имеджа
                sh '''docker build -t "mywork" --secret id=myssh,src=id_rsa . ''' 
            }
        }
        stage('Test') { 
            steps {
                // 
            }
        }
        stage('Deploy') { 
            steps {
                // 
            }
        }
    }
}
