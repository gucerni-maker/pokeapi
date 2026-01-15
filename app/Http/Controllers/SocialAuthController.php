<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Laravel\Socialite\Facades\Socialite;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class SocialAuthController extends Controller
{
    // Redirige al usuario a la pantalla de Google
    public function redirectToGoogle()
    {
        return Socialite::driver('google')->redirect();
    }

    // Maneja la respuesta de Google
    public function handleGoogleCallback()
    {
        try {
            $googleUser = Socialite::driver('google')->stateless()->user();

            // Buscar usuario o crear uno nuevo
            $user = User::firstOrCreate(
                ['email' => $googleUser->getEmail()],
                [
                    'name' => $googleUser->getName(),
                    'password' => bcrypt(str()->random(16)), // password aleatorio
                ]
            );

            // Iniciar sesión con este usuario
            Auth::login($user);

            return redirect('/dashboard')->with('success', 'Bienvenido ' . $user->name);
        } catch (\Exception $e) {
            return redirect('/')->with('error', 'Error al iniciar sesión con Google.');
        }
    }
}
