FROM wordpress:latest

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd

# Copy custom WordPress files if needed
# COPY ./custom-wordpress-files /var/www/html/

# Set permissions
RUN chown -R www-data:www-data /var/www/html

# Expose the port
EXPOSE 80

CMD ["apache2-foreground"]