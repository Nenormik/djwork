# Используем базовый образ
FROM ubuntu:latest

# Устанавливаем необходимые пакеты
RUN apt -y update
RUN apt install -y ansible python3-pip nano wget curl tzdata git
RUN apt clean

# Копируем приватный SSH ключ в docker secrets
RUN --mount=type=secret,id=myssh

