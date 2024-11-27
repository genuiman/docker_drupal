# Используем официальный базовый образ Drupal
FROM drupal:latest

# Указываем рабочую директорию
WORKDIR /var/www/html

# Устанавливаем дополнительные зависимости, если нужно
RUN apt-get update && apt-get install -y \
    vim \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Копируем файлы проекта (если есть кастомные файлы, например, темы)
# ADD ./custom-modules ./modules/
# ADD ./custom-themes ./themes/

# Устанавливаем права на папки
RUN chown -R www-data:www-data /var/www/html

# Указываем переменные окружения (настраиваются в docker-compose.yml)
ENV DRUPAL_DB_HOST=db \
    DRUPAL_DB_NAME=drupal \
    DRUPAL_DB_USER=drupal \
    DRUPAL_DB_PASSWORD=drupal

# Запускаем Apache в качестве CMD по умолчанию
CMD ["apache2-foreground"]
