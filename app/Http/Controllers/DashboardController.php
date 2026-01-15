<?php

namespace App\Http\Controllers;

use App\Models\Pokemon;

class DashboardController extends Controller
{
    public function index()
    {
        $pokemons = Pokemon::all();

        $totalPokemon = $pokemons->count();

        // Agrupar por tipo
        $pokemonPorTipo = [];
        foreach ($pokemons as $p) {
            $types = $p->types ?? []; // siempre es array gracias a $casts

            foreach ($types as $type) {
                if (!isset($pokemonPorTipo[$type])) {
                    $pokemonPorTipo[$type] = 0;
                }
                $pokemonPorTipo[$type]++;
            }
        }

        // Top 5 Pokémon (por ejemplo, los primeros 5)
        $topPokemons = $pokemons->take(5)->map(function ($p) {
            return ['name' => $p->name, 'total' => 1];
        });

        return view('dashboard', compact('totalPokemon', 'pokemonPorTipo', 'topPokemons'));
    }
}
