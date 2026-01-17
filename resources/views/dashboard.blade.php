<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Dashboard Pokémon</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>

<body class="bg-gray-100">

<div class="flex min-h-screen">

    <!-- Sidebar -->
    <aside id="sidebar"
           class="fixed inset-y-0 left-0 w-64 bg-blue-900 text-white transform -translate-x-full md:translate-x-0 transition-transform duration-200 z-40 md:relative md:flex md:flex-col">

        <div class="p-4 text-center font-bold text-lg border-b border-blue-700">
            Pokémon Dashboard
        </div>

        <nav class="flex-1 p-4 space-y-2">
            <a href="{{ url('/dashboard') }}" class="block py-2 px-3 rounded hover:bg-blue-700">📊 Dashboard</a>
            <a href="{{ url('/pokemon') }}" class="block py-2 px-3 rounded hover:bg-blue-700">🔍 Pokédex</a>
        </nav>
    </aside>

    <!-- Overlay mobile -->
    <div id="overlay" class="fixed inset-0 bg-black bg-opacity-50 hidden z-30 md:hidden"></div>

    <!-- Main -->
    <main class="flex-1 w-full p-4 md:p-6">

        <!-- Mobile header -->
        <div class="flex items-center justify-between mb-6 md:hidden">
            <button id="menuBtn" class="text-blue-900 text-2xl">☰</button>
            <h1 class="text-xl font-bold">Dashboard</h1>
        </div>

        <h1 class="hidden md:block text-2xl font-bold mb-6">📊 Estadísticas de Pokémon</h1>

        <!-- Cards -->
        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6 mb-6">
            <div class="bg-white p-6 rounded shadow">
                <h2 class="text-lg font-semibold">Total de Pokémon</h2>
                <p class="text-3xl font-bold text-blue-700">{{ $totalPokemon }}</p>
            </div>

            <div class="bg-white p-6 rounded shadow">
                <h2 class="text-lg font-semibold">Tipos registrados</h2>
                <p class="text-3xl font-bold text-green-600">{{ count($pokemonPorTipo) }}</p>
            </div>

            <div class="bg-white p-6 rounded shadow">
                <h2 class="text-lg font-semibold mb-2">Top 5 Pokémon</h2>
                <ul class="text-gray-700 space-y-1">
                    @foreach ($topPokemons as $poke)
                        <li>{{ ucfirst($poke['name']) }} ({{ $poke['total'] }})</li>
                    @endforeach
                </ul>
            </div>
        </div>

        <!-- Charts -->
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-6">
            <div class="bg-white p-4 md:p-6 rounded shadow">
                <h2 class="text-lg font-semibold mb-4">Distribución por tipo</h2>
                <div class="relative h-72">
                    <canvas id="pokemonTipoChart"></canvas>
                </div>
            </div>

            <div class="bg-white p-4 md:p-6 rounded shadow">
                <h2 class="text-lg font-semibold mb-4">Top 5 Pokémon</h2>
                <div class="relative h-72">
                    <canvas id="pokemonTopChart"></canvas>
                </div>
            </div>
        </div>

    </main>
</div>

<script>
    // Sidebar toggle (mobile)
    const sidebar = document.getElementById('sidebar');
    const overlay = document.getElementById('overlay');
    const menuBtn = document.getElementById('menuBtn');

    menuBtn?.addEventListener('click', () => {
        sidebar.classList.toggle('-translate-x-full');
        overlay.classList.toggle('hidden');
    });

    overlay?.addEventListener('click', () => {
        sidebar.classList.add('-translate-x-full');
        overlay.classList.add('hidden');
    });

    // Data
    const pokemonPorTipo = {!! json_encode($pokemonPorTipo) !!};
    const topPokemons = {!! json_encode($topPokemons) !!};

    new Chart(document.getElementById('pokemonTipoChart'), {
        type: 'pie',
        data: {
            labels: Object.keys(pokemonPorTipo),
            datasets: [{
                data: Object.values(pokemonPorTipo),
                backgroundColor: [
                    '#3B82F6', '#F59E0B', '#10B981', '#EF4444', '#8B5CF6'
                ]
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false
        }
    });

    new Chart(document.getElementById('pokemonTopChart'), {
        type: 'bar',
        data: {
            labels: topPokemons.map(p => p.name),
            datasets: [{
                label: 'Cantidad',
                data: topPokemons.map(p => p.total),
                backgroundColor: '#3B82F6'
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            scales: { y: { beginAtZero: true } }
        }
    });
</script>

</body>
</html>
