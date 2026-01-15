@extends('layouts.app')

@section('content')

{{-- 🎨 Estilos ligeros solo para esta vista --}}
<style>
    .pokedex-card {
        border-radius: 1rem;
        transition: transform .2s ease, box-shadow .2s ease;
        border: 1px solid #e5e7eb;
    }

    .pokedex-card:hover {
        transform: translateY(-4px);
        box-shadow: 0 12px 25px rgba(0,0,0,.08);
    }

    .pokemon-img {
        height: 180px;
        object-fit: contain;
    }

    .type-badge {
        font-size: .75rem;
        padding: .35em .6em;
        border-radius: 999px;
        font-weight: 500;
    }

    /* Colores suaves por tipo */
    .type-grass { background: #d1fae5; color: #065f46; }
    .type-poison { background: #ede9fe; color: #5b21b6; }
    .type-fire { background: #fee2e2; color: #991b1b; }
    .type-water { background: #e0f2fe; color: #075985; }
    .type-electric { background: #fef9c3; color: #854d0e; }
    .type-normal { background: #f3f4f6; color: #374151; }
</style>

<h1 class="text-center mb-4 fw-bold">
    <a class="nav-link d-inline-block" href="/pokemon">Pokédex</a>
</h1>

{{-- 🔍 Buscador + filtro en tarjeta --}}
<div class="mb-5 d-flex justify-content-center">
    <div class="card shadow-sm border-0 p-3" style="max-width: 700px; width: 100%;">
        <form method="GET" action="{{ route('pokemon.index') }}" class="d-flex flex-wrap gap-2 justify-content-center">
            <input
                type="text"
                name="search"
                class="form-control"
                placeholder="Buscar Pokémon..."
                value="{{ $search }}"
                style="max-width: 260px;"
            >

            <select
                name="type"
                class="form-select"
                onchange="this.form.submit()"
                style="max-width: 200px;"
            >
                <option value="">-- Filtrar por tipo --</option>
                @foreach (['grass','poison','fire','flying','water','bug','normal','electric','ground','fairy','fighting','psychic','rock','steel','ice','ghost','dragon','dark'] as $t)
                    <option value="{{ $t }}" {{ $type == $t ? 'selected' : '' }}>
                        {{ ucfirst($t) }}
                    </option>
                @endforeach
            </select>

            <button type="submit" class="btn btn-primary px-4">
                Buscar
            </button>
        </form>
    </div>
</div>

{{-- 🧩 Galería --}}
<div class="row row-cols-1 row-cols-md-3 row-cols-lg-3 g-4">
    @foreach ($pokemons as $pokemon)
        <div class="col">
            <div class="card pokedex-card h-100 text-center p-3">
                
                <img
                    src="{{ $pokemon['image'] }}"
                    class="pokemon-img mx-auto mb-2"
                    alt="{{ ucfirst($pokemon['name']) }}"
                >

                <div class="card-body pt-0">
                    <h5 class="card-title text-capitalize fw-semibold mb-1">
                        {{ $pokemon['name'] }}
                    </h5>

                    <div class="text-muted small mb-2">
                        #{{ $pokemon['id'] }}
                    </div>

                    <div class="d-flex justify-content-center flex-wrap gap-1 mb-2">
                        @foreach ($pokemon['types'] as $typeName)
                            <span class="type-badge type-{{ $typeName }}">
                                {{ ucfirst($typeName) }}
                            </span>
                        @endforeach
                    </div>

                    <p class="text-muted small mb-0">
                        Altura: {{ $pokemon['height'] }} | Peso: {{ $pokemon['weight'] }}
                    </p>
                </div>
            </div>
        </div>
    @endforeach
</div>

{{-- 🔢 Paginación --}}
@php
    $query = request()->except('page');
    $start = max(1, $page - 2);
    $end = min($totalPages, $page + 2);
@endphp

<div class="d-flex justify-content-center mt-5">
    <nav>
        <ul class="pagination">
            @if ($page > 1)
                <li class="page-item">
                    <a class="page-link" href="{{ route('pokemon.index', array_merge($query, ['page' => $page - 1])) }}">
                        Anterior
                    </a>
                </li>
            @endif

            @for ($i = $start; $i <= $end; $i++)
                <li class="page-item {{ $i == $page ? 'active' : '' }}">
                    <a class="page-link" href="{{ route('pokemon.index', array_merge($query, ['page' => $i])) }}">
                        {{ $i }}
                    </a>
                </li>
            @endfor

            @if ($page < $totalPages)
                <li class="page-item">
                    <a class="page-link" href="{{ route('pokemon.index', array_merge($query, ['page' => $page + 1])) }}">
                        Siguiente
                    </a>
                </li>
            @endif
        </ul>
    </nav>
</div>

@endsection
