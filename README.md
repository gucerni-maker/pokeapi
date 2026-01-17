# Laravel Pokédex

Proyecto Pokédex desarrollado en **Laravel**, que consume datos de Pokémon y los muestra en una interfaz paginada, con búsqueda y filtros por tipo.

# Características

- Dashboard con estadísticas de Pokémon
- Listado paginado de Pokémon
- Búsqueda por nombre
- Filtro por tipo
- Top 5 Pokémon más comunes
- Diseño responsive con Bootstrap 5
- Optimización de carga (paginación limitada)
- Arquitectura MVC (Laravel)
- Datos persistidos en base de datos (no consumo directo en vistas)

# Tecnologías utilizadas

- PHP 8.x
- Laravel
- Bootstrap 5
- Blade Templates
- MySQL / MariaDB
- Apache (mod_rewrite)
- Git & GitHub

# Requisitos

- PHP >= 8.1
- Composer
- MySQL o MariaDB
- Servidor web (Apache recomendado)
- Extensiones PHP habilitadas:
  - pdo
  - pdo_mysql
  - mbstring
  - openssl
  - tokenizer
  - xml
  - ctype
  - curl

# Instalación

```bash
git clone https://github.com/tu-usuario/tu-repo.git
cd tu-repo
composer install
cp .env.example .env
php artisan key:generate
sudo chown -R www-data:www-data storage bootstrap/cache
sudo chmod -R 775 storage bootstrap/cache
php artisan migrate
php artisan pokemon:sync

Ejemplo de VirtualHost:
<VirtualHost *:80>
    ServerName tu-dominio-o-ip
    DocumentRoot /var/www/pokeapi/public

    <Directory /var/www/pokeapi/public>
        AllowOverride All
        Require all granted
    </Directory>

    ErrorLog ${APACHE_LOG_DIR}/pokeapi.log
    CustomLog ${APACHE_LOG_DIR}/pokeapi.log combined
</VirtualHost>

Habilitar modulos necesarios:
sudo a2enmod rewrite
sudo systemctl restart apache2

Ejemplo de .htaccess (ubicado en el directorio public)
<IfModule mod_rewrite.c>
    RewriteEngine On

    RewriteCond %{REQUEST_FILENAME} !-d
    RewriteCond %{REQUEST_FILENAME} !-f
    RewriteRule ^ index.php [L]
</IfModule>