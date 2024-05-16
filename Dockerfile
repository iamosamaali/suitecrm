# Use an official PHP runtime as a parent image
FROM php:8.0-apache

# Set working directory
WORKDIR /var/www/html

# Install any needed PHP extensions
# You can add more extensions if needed
RUN docker-php-ext-install pdo pdo_mysql

# Copy the current directory contents into the container at /var/www/html
COPY . /var/www/html

# Expose port 80 to allow communication to/from server
EXPOSE 80

# Run Apache server in the foreground
CMD ["apache2-foreground"]
