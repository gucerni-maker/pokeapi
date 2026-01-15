<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PokemonController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\WelcomeController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Aquí definimos todas las rutas de tu aplicación.
| Esta versión es completamente pública, sin login ni Google OAuth.
|
*/

// Página principal (Welcome)
Route::get('/', [WelcomeController::class, 'index'])->name('welcome');

// Dashboard (ahora accesible sin login)
Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

// Lista de Pokémon
Route::get('/pokemon', [PokemonController::class, 'index'])->name('pokemon.index');
