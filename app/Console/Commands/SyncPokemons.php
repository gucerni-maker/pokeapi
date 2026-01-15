<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Http;
use App\Models\Pokemon;

class SyncPokemons extends Command
{
    protected $signature = 'pokemons:sync';
    protected $description = 'Sincroniza la base de datos local con la PokeAPI';

    public function handle()
    {
        $this->info('Descargando lista de pokémon...');

        $response = Http::get('https://pokeapi.co/api/v2/pokemon?limit=2000');
        $allPokemons = $response->json()['results'] ?? [];

        foreach ($allPokemons as $pokemon) {
            $details = Http::get($pokemon['url'])->json();
            $types = array_map(fn($t) => $t['type']['name'], $details['types']);

            // Actualizar o crear en DB
            Pokemon::updateOrCreate(
                ['name' => $pokemon['name']],
                ['types' => $types]
            );
        }

        $this->info('¡Pokémon sincronizados correctamente!');
    }
}
