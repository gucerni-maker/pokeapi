<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Dashboard Pokémon</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="flex h-screen bg-gray-100">

    <!-- Sidebar -->
    <aside class="w-64 bg-blue-900 text-white flex flex-col">
        <div class="p-4 text-center font-bold text-lg border-b border-blue-700">
            Pokémon Dashboard
        </div>
        <nav class="flex-1 p-4 space-y-2">
            <a href="{{ url('/dashboard') }}" class="block py-2 px-3 rounded hover:bg-blue-700">📊 Dashboard</a>
            <a href="{{ url('/pokemon') }}" class="block py-2 px-3 rounded hover:bg-blue-700">🔍 Pokédex</a>

        </nav>
        <div class="p-4 border-t border-blue-700">

        </div>
    </aside>

    <!-- Main content -->
    <main class="flex-1 p-6 overflow-y-auto">
        <h1 class="text-2xl font-bold mb-6">📊 Estadísticas de Pokémon</h1>

        <!-- Cards -->
        <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-6">
            <div class="bg-white p-6 rounded shadow">
                <h2 class="text-lg font-semibold">Total de Pokémon</h2>
                <p class="text-3xl font-bold text-blue-700">{{ $totalPokemon }}</p>
            </div>
            <div class="bg-white p-6 rounded shadow">
                <h2 class="text-lg font-semibold">Tipos registrados</h2>
                <p class="text-3xl font-bold text-green-600">{{ count($pokemonPorTipo) }}</p>
            </div>
            <div class="bg-white p-6 rounded shadow">
                <h2 class="text-lg font-semibold">Top 5 Pokémon más comunes</h2>
                <ul class="list-disc list-inside text-gray-700">
                    @foreach ($topPokemons as $poke)
                        <li>{{ ucfirst($poke['name']) }} ({{ $poke['total'] }})</li>
                    @endforeach
                </ul>
            </div>
        </div>

        <!-- Charts -->
        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <!-- Gráfico de tipos -->
            <div class="bg-white p-6 rounded shadow">
                <h2 class="text-lg font-semibold mb-4">Distribución por tipo</h2>
                <canvas id="pokemonTipoChart"></canvas>
            </div>

            <!-- Gráfico de top 5 -->
            <div class="bg-white p-6 rounded shadow">
                <h2 class="text-lg font-semibold mb-4">Top 5 Pokémon más comunes</h2>
                <canvas id="pokemonTopChart"></canvas>
            </div>
        </div>
    </main>

    <script>
        // Datos de PHP → JS
        const pokemonPorTipo = {!! json_encode($pokemonPorTipo) !!};
        const topPokemons = {!! json_encode($topPokemons) !!};

        // Gráfico de pastel por tipo
        const ctxTipo = document.getElementById('pokemonTipoChart').getContext('2d');
        new Chart(ctxTipo, {
            type: 'pie',
            data: {
                labels: Object.keys(pokemonPorTipo),
                datasets: [{
                    label: 'Pokémon por tipo',
                    data: Object.values(pokemonPorTipo),
                    backgroundColor: [
                        '#3B82F6', '#F59E0B', '#10B981', '#EF4444', '#8B5CF6',
                        '#F472B6', '#14B8A6', '#6366F1', '#84CC16', '#EAB308'
                    ],
                }]
            }
        });

        // Gráfico de barras del top 5
        const ctxTop = document.getElementById('pokemonTopChart').getContext('2d');
        new Chart(ctxTop, {
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
                scales: {
                    y: { beginAtZero: true }
                }
            }
        });
    </script>

</body>
</html>
