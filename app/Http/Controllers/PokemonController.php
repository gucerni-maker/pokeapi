<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class PokemonController extends Controller
{
    public function index(Request $request)
    {
        $page = (int) $request->query('page', 1);
        $limit = 3;
        $offset = ($page - 1) * $limit;

        $search = $request->query('search');
        $type = $request->query('type');

        $pokemons = [];
        $totalPages = 1;

        // === Caso: búsqueda por nombre ===
        if ($search) {
            $details = Http::get("https://pokeapi.co/api/v2/pokemon/". strtolower($search));

            if ($details->successful()) {
                $data = $details->json();
                $pokemons[] = [
                    'id' => $data['id'],
                    'name' => $data['name'],
                    'image' => $data['sprites']['front_default'],
                    'types' => collect($data['types'])->pluck('type.name')->toArray(),
                    'height' => $data['height'],
                    'weight' => $data['weight'],
                    'stats' => collect($data['stats'])->mapWithKeys(fn($s) => [$s['stat']['name'] => $s['base_stat']])->toArray(),
                ];
            }
        }
        // === Caso: filtro por tipo ===
        elseif ($type) {
            $response = Http::get("https://pokeapi.co/api/v2/type/{$type}");
            if ($response->successful()) {
                $data = $response->json();
                $allPokemons = collect($data['pokemon'])->pluck('pokemon')->toArray();

                $totalPages = ceil(count($allPokemons) / $limit);
                $slice = array_slice($allPokemons, $offset, $limit);

                foreach ($slice as $pokemon) {
                    $details = Http::get($pokemon['url'])->json();
                    $pokemons[] = [
                        'id' => $details['id'],
                        'name' => $details['name'],
                        'image' => $details['sprites']['front_default'],
                        'types' => collect($details['types'])->pluck('type.name')->toArray(),
                        'height' => $details['height'],
                        'weight' => $details['weight'],
                        'stats' => collect($details['stats'])->mapWithKeys(fn($s) => [$s['stat']['name'] => $s['base_stat']])->toArray(),
                    ];
                }
            }
        }
        // === Caso: listado normal (20 en 20) ===
        else {
            $response = Http::get("https://pokeapi.co/api/v2/pokemon?limit={$limit}&offset={$offset}");
            $data = $response->json();

            $totalPages = ceil($data['count'] / $limit);

            foreach ($data['results'] as $pokemon) {
                $details = Http::get($pokemon['url'])->json();
                $pokemons[] = [
                    'id' => $details['id'],
                    'name' => $details['name'],
                    'image' => $details['sprites']['front_default'],
                    'types' => collect($details['types'])->pluck('type.name')->toArray(),
                    'height' => $details['height'],
                    'weight' => $details['weight'],
                    'stats' => collect($details['stats'])->mapWithKeys(fn($s) => [$s['stat']['name'] => $s['base_stat']])->toArray(),
                ];
            }
        }

        return view('pokemon.index', [
            'pokemons' => $pokemons,
            'page' => $page,
            'totalPages' => $totalPages,
            'search' => $search,
            'type' => $type,
        ]);
    }
}
