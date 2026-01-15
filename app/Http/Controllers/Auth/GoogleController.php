<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Laravel\Socialite\Facades\Socialite;
use App\Models\User;

class GoogleController extends Controller
{
    // Redirige a la página de Google para login
    public function redirect()
    {
        return Socialite::driver('google')->redirect();
    }

    // Maneja la respuesta de Google
    public function callback()
    {
        $googleUser = Socialite::driver('google')->user();

        // Busca usuario existente o crea uno nuevo
        $user = User::updateOrCreate(
            ['email' => $googleUser->getEmail()],
            [
                'name' => $googleUser->getName(),
                'google_id' => $googleUser->getId(),
                'password' => bcrypt(str()->random(16)), // contraseña dummy
            ]
        );

        // Inicia sesión con el usuario
        Auth::login($user);

        return redirect()->route('dashboard');
    }
}
