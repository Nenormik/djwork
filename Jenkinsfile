pipeline {
    agent any

    environment {
        DOCKER_CREDENTIALS_ID = '4ea9547b-3381-4d51-b153-f829af5c0037' // ID учетных данных Docker Hub в Jenkins
    }

    stages {
        stage('Checkout') {
            steps {
                // Клонируем репозиторий
                git 'https://github.com/Nenormik/djwork.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Собираем образ
                    def customImage = docker.build("nenormik/mywork:latest")
                }
            }
        }

        stage('Run Tests') {
            steps {
                script {
                    // Запускаем контейнер для тестов
                    def customImage = docker.image("nenormik/mywork:latest")
                    customImage.inside {
                        // Здесь вы можете выполнять ваши тесты
                        sh 'echo "Running tests..."'
                    }
                }
            }
        }

        stage('Publish to Docker Hub') {
            steps {
                script {
                    // Вход в Docker Hub и публикация образа
                    docker.withRegistry('https://index.docker.io/v1/', DOCKER_CREDENTIALS_ID) {
                        customImage.push()
                    }
                }
            }
        }
    }
}

