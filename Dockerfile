# Используем официальный образ Go в качестве базового
FROM golang:1.22.0

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем файлы проекта в рабочую директорию
COPY . .

# Устанавливаем зависимости проекта
RUN go mod download

# Собираем приложение
RUN go build -o main .

# Запускаем приложение
CMD ["./main"]
