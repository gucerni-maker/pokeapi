<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\Pokemon;
use Illuminate\Support\Facades\Http;

class SyncPokemonData extends Command
{
    protected $signature = 'pokemon:sync';
    protected $description = 'Sincroniza todos los Pokémon desde la PokeAPI a la base de datos';

    public function handle()
    {
        $this->info('Iniciando sincronización de Pokémon...');

        $limit = 10000; // suficiente para todos los Pokémon
        $response = Http::get("https://pokeapi.co/api/v2/pokemon?limit={$limit}");

        if ($response->failed()) {
            $this->error('Error al conectarse a la PokeAPI');
            return 1;
        }

        $results = $response->json()['results'];

        foreach ($results as $pokemonData) {
            $name = $pokemonData['name'];

            // Traer detalles de cada Pokémon
            $details = Http::get($pokemonData['url'])->json();

            // Obtener tipos como array
            $types = collect($details['types'])->pluck('type.name')->toArray();

            // Guardar o actualizar en la base de datos
            Pokemon::updateOrCreate(
                ['name' => $name],
                ['types' => $types]
            );

            $this->info("Sincronizado: {$name}");
        }

        $this->info('Sincronización completada ✅');
        return 0;
    }
}
