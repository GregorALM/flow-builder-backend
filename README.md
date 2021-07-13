# Overview

CMS для сайта на strapi.

Для старта разработки необходимо:

- Настроить `.env` (в репозитории есть пример - `.env.example`):

```bash
HOST=0.0.0.0
PORT=1337
DATABASE_CLIENT=mongo
DATABASE_HOST=db
DATABASE_PORT=27017
DATABASE_NAME=test
DATABASE_USERNAME=strapi
DATABASE_PASSWORD=strapi
AUTHENTICATION_DATABASE=admin
```

- Запустить:

```bash
docker-compose up
```

Контейнер установит все нужные зависимости и запустит приложение.

По-умолчанию админка будет расположена по адресу `http://localhost:1337/admin`.

## После обновления package.json

Поскольку установка зависимостей происходит в контейнере (там есть OS-специфичные пакеты), то необходимо сделать:

```bash
rm -rf node_modules/ package-lock.json
```

и потом заново:

```bash
docker-compose up
```

## Плагин Documentation

FYI: После первого запуска приложения устанавливаются зависимости для плагина Swagger API Docs, но в админке все равно нужно нажать Download :-/
