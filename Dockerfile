# Use an official PHP image with Apache
FROM php:8.2-apache

# Install necessary PHP extensions and tools
RUN docker-php-ext-install pdo pdo_mysql

# Copy your application files to the container
COPY . /var/www/html

# Set the working directory
WORKDIR /var/www/html

# Ensure proper permissions for the application files
RUN chown -R www-data:www-data /var/www/html

# Expose the port Apache will run on
EXPOSE 80
