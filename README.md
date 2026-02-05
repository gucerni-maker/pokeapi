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

- PHP 8.3
- Laravel
- Bootstrap 5
- Blade Templates
- MySQL
- Apache (mod_rewrite)
- Git & GitHub

# Requisitos
- Git
    sudo apt install git
    
- Docker
    sudo apt install docker
    
- Composer
    sudo apt install composer
    
- PHP y sus librerias cli common mbstring xml zip curl mysql bcmath dom tokenizer json
    sudo apt install -y php php.1-cli php-mbstring php-xml php-zip php-curl php-mysql php-bcmath php-dom php.1-tokenizer php-json composer

# Descargar e ingresar al directorio
- git clone https://github.com/gucerni-maker/pokeapi.git
- cd pokeapi

# Otorgar permisos
- chmod -R 775 storage bootstrap/cache

# Instalar dependencias
- composer install

# Configurar variables de entorno
- cp .env.example .env

# configurar archivo .env
APP_PORT=8080
DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=tu_base_de_datos
DB_USERNAME=sail
DB_PASSWORD=password

# Generar clave de aplicación
- php artisan key:generate

# Construir la imagen
./vendor/bin/sail up -d

# Ejecutar las migraciones
- ./vendor/bin/sail artisan migrate

# Ejecutar los seeds
- ./vendor/bin/sail artisan db:seeds

# Ejectuar la sincronizacion
./vendor/bin/sail artisan pokemon:sync

# Acceder a la aplicacion
- http://localhost:8080

----------------------------------------------------

# Problemas comunes durante la instalación

# Error al construir la imagen de Sail (`sail build` falla)

Este error ocurre cuando Docker no puede descargar paquetes durante la construcción de la imagen. Soluciones:

```bash
# Solución 1: Rebuild con caché limpio
./vendor/bin/sail down
docker system prune -f --volumes
./vendor/bin/sail build --no-cache
./vendor/bin/sail up -d
