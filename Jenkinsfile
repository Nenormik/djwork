pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                // Проверка файлов
                sh  '''ls -la'''

                // Сборка образа 
                sh  '''docker build -t "mywork" --secret id=myssh,src=id_rsa .'''
                   
            }
        }
    }
    post {
        success {
            echo 'Сборка завершена успешно!'
        }
        failure {
            echo 'Сборка завершилась с ошибкой.'
        }
    }
}

