# Pokédex

Proyecto Pokédex desarrollado en **Laravel** usando el contenedor Laravel Sail, que consume datos de Pokémon y los muestra en una interfaz paginada, con búsqueda y filtros por tipo.

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
    
- Docker y docker compose
    sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
    
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
    
    echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
    $(. /etc/os-release && echo "$UBUNTU_CODENAME") stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    
    sudo apt update
    sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

    sudo usermod -aG docker ${USER}

# Descargar e ingresar al directorio
- git clone https://github.com/gucerni-maker/pokeapi.git
- cd pokeapi

# Otorgar permisos
- chmod -R 775 storage bootstrap/cache

# Instalar dependencias
- docker run --rm \
    -u "$(id -u):$(id -g)" \
    -v "$(pwd):/var/www/html" \
    -w /var/www/html \
    laravelsail/php83-composer:latest \
    composer install --ignore-platform-reqs

# Configurar variables de entorno
- cp .env.example .env
- nano .env

# configurar archivo .env
  APP_PORT=8080
  DB_CONNECTION=mysql
  DB_HOST=mysql
  DB_PORT=3306
  DB_DATABASE=laravel
  DB_USERNAME=sail
  DB_PASSWORD=password

# Construir la imagen
- ./vendor/bin/sail up -d

# Generar clave de aplicación
- ./vendor/bin/sail artisan key:generate

# Ejecutar las migraciones
- ./vendor/bin/sail artisan migrate

# Ejecutar los seeds
- ./vendor/bin/sail artisan db:seed

# Ejectuar la sincronizacion
- ./vendor/bin/sail artisan pokemon:sync

# Acceder a la aplicacion
- http://localhost:8080


