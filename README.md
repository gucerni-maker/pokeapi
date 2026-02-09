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
    sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt update
    sudo apt install docker.io -y
    sudo usermod -aG docker ${USER}
        (Opcional: Probar el programa)
        sudo docker run hello-world
 
- Docker compose
    sudo apt install docker-compose -y
    
- PHP y sus librerias
    sudo apt install php8.3-cli -y
    sudo apt install -y php*-mbstring php*-xml php*-zip php*-curl php*-mysql php*-bcmath php*-dom php*-tokenizer php*-json
    
- Composer
    sudo apt install composer -y

# Descargar e ingresar al directorio
- git clone https://github.com/gucerni-maker/pokeapi.git
- cd pokeapi

# Otorgar permisos
- chmod -R 775 storage bootstrap/cache

# Instalar dependencias
- composer install

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

# Generar clave de aplicación
- php artisan key:generate

# Construir la imagen
./vendor/bin/sail up -d

# Ejecutar las migraciones
- ./vendor/bin/sail artisan migrate

# Ejecutar los seeds
- ./vendor/bin/sail artisan db:seed

# Ejectuar la sincronizacion
./vendor/bin/sail artisan pokemon:sync

# Acceder a la aplicacion
- http://localhost:8080


