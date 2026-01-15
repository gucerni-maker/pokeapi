<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class WelcomeController extends Controller
{
    public function index()
    {
        // Tomamos todas las imágenes de la carpeta public/images
        $imageFiles = glob(public_path('images/*.png')); // Puedes cambiar la extensión si necesitas

        // Convertimos la ruta absoluta a relativa para usar en <img>
        $images = array_map(function ($path) {
            return asset('images/' . basename($path));
        }, $imageFiles);

        return view('welcome', compact('images'));
    }
}
