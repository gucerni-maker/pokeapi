<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Http;

class FetchPokemonImages extends Command
{
    /**
     * Nombre y firma del comando.
     *
     * php artisan pokemon:fetch-images
     */
    protected $signature = 'pokemon:fetch-images {limit=10}';

    /**
     * Descripción del comando.
     */
    protected $description = 'Descarga imágenes de Pokémon desde la PokeAPI y las guarda en public/images';

    public function handle()
    {
        $limit = (int) $this->argument('limit');
        $this->info("Descargando imágenes de los primeros {$limit} Pokémon...");

        $imagePath = public_path('images');

        // Crear carpeta si no existe
        if (!file_exists($imagePath)) {
            mkdir($imagePath, 0777, true);
            $this->info("Carpeta creada: {$imagePath}");
        }

        for ($i = 1; $i <= $limit; $i++) {
            $response = Http::get("https://pokeapi.co/api/v2/pokemon/{$i}");

            if ($response->successful()) {
                $pokemon = $response->json();
                $name = $pokemon['name'];
                $spriteUrl = $pokemon['sprites']['other']['official-artwork']['front_default']
                           ?? $pokemon['sprites']['front_default'];

                if ($spriteUrl) {
                    $imageContent = file_get_contents($spriteUrl);
                    $fileName = "{$imagePath}/pokemon{$i}.png";
                    file_put_contents($fileName, $imageContent);

                    $this->info("✔ {$name} descargado en pokemon{$i}.png");
                } else {
                    $this->warn("⚠ {$name} no tiene imagen disponible.");
                }
            } else {
                $this->error("❌ Error al obtener el Pokémon {$i}");
            }
        }

        $this->info("✅ Descarga completada.");
    }
}