FROM php:8.2-fpm

# Installation des dépendances PHP
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libicu-dev \
    zlib1g-dev \
    libxml2-dev \
    libzip-dev \
    # Node.js et npm
    nodejs \
    npm

# Installation de Yarn
RUN npm install -g yarn

# Extensions PHP
RUN docker-php-ext-install \
    pdo \
    pdo_mysql \
    intl \
    zip

# Installation de Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www/html