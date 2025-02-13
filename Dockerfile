# Используем базовый образ
FROM ubuntu:20.04

# Устанавливаем необходимые пакеты
RUN apt update && 
    apt install -y ansible python3-pip nano wget curl tzdata git && 
    apt clean

# Копируем приватный SSH ключ
# Убедитесь, что ваш ключ находится в каталоге проекта и называется id_rsa
COPY id_rsa /root/.ssh/id_rsa

# Устанавливаем права на ключ
RUN chmod 600 /root/.ssh/id_rsa

# Устанавливаем рабочую директорию
WORKDIR /app

# Команда по умолчанию
CMD ["bash"]
