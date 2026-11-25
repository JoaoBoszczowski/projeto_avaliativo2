FROM php:8.3-apache

# Instala a extensão necessária para conexão com MySQL
RUN docker-php-ext-install pdo_mysql

# Copia os arquivos da aplicação para o Apache
COPY site/ /var/www/html/

# Define o diretório de trabalho
WORKDIR /var/www/html

# Porta utilizada pelo Apache
EXPOSE 80
