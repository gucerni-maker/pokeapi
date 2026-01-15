<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pokémon Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #FFDE00, #3B4CCA);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }
        .navbar {
            background-color: #3B4CCA !important;
        }
        .navbar-brand {
            font-family: 'Pokemon Solid', sans-serif;
            font-size: 1.5rem;
            color: #FFDE00 !important;
            text-shadow: 2px 2px 4px #000;
        }
        .hero {
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            color: #fff;
            flex-direction: column;
        }
        .hero h1 {
            font-size: 3rem;
            font-weight: bold;
            text-shadow: 3px 3px 6px #000;
        }
        .btn-pokemon {
            background-color: #FF1C1C;
            border: none;
            color: white;
            font-weight: bold;
            padding: 0.8rem 2rem;
            border-radius: 50px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.3);
            transition: 0.3s;
        }
        .btn-pokemon:hover {
            background-color: #cc1515;
            transform: scale(1.05);
        }
        .carousel-item img {
            max-height: 300px;
            object-fit: contain;
            margin: auto;
        }
        .carousel-caption {
            background: rgba(0,0,0,0.6);
            border-radius: 15px;
            padding: 1rem;
        }
        .footer {
            text-align: center;
            padding: 1rem;
            background: rgba(0,0,0,0.2);
            color: white;
        }
        @import url('https://fonts.cdnfonts.com/css/pokemon-solid');
    </style>
</head>
<body>
    <!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container d-flex">
        <p class="navbar-brand mb-0">Pokémon Dashboard</p>
        <a href="{{ url('dashboard') }}" class="btn btn-pokemon  mb-0">Entrar al Dashboard</a>
    </div>
</nav>


    <!-- Hero Section -->
    <section class="hero">
        <img src="https://raw.githubusercontent.com/PokeAPI/media/master/logo/pokeapi_256.png" 
             alt="Pokémon Logo" class="img-fluid mb-4" style="max-width:200px;">
        <h1>¡Atrapa todos los Pokémon!</h1>
    </section>

    <!-- Carrusel de Pokémon -->
    <section class="container my-5">
        <h2 class="text-center text-white mb-4">Pokémon Destacados</h2>
        @if(!empty($images) && count($images) > 0)
            <div id="pokemonCarousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    @foreach($images as $key => $img)
                        <div class="carousel-item {{ $key == 0 ? 'active' : '' }}">
                            <img src="{{ $img }}" class="d-block mx-auto" style="max-height: 230px;" alt="Pokémon {{ $key + 1 }}">
                        </div>
                    @endforeach
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#pokemonCarousel" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Anterior</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#pokemonCarousel" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Siguiente</span>
                </button>
            </div>
        @else
            <p class="text-center text-white">No hay imágenes de Pokémon disponibles.</p>
        @endif
    </section>

    <!-- Footer -->
    <footer class="footer">
        <p>Hecho con ✨✨ Laravel & Bootstrap 5 ✨✨</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
