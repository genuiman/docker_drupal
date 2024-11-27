# Используем официальный образ MySQL
FROM mysql:5.7

# Настраиваем переменные окружения
ENV MYSQL_DATABASE=drupal
ENV MYSQL_USER=drupal
ENV MYSQL_PASSWORD=drupal
ENV MYSQL_ROOT_PASSWORD=root

# Указываем рабочую директорию
WORKDIR /var/lib/mysql

# Добавляем объемы для сохранения данных (опционально)
VOLUME ["/var/lib/mysql"]
