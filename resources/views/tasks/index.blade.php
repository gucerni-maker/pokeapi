<a href="{{ route('tasks.create') }}">Crear tarea</a>

@if(session('success')) <div>{{ session('success') }}</div> @endif

<table>
  <thead><tr><th>ID</th><th>Título</th><th>Completada</th><th>Acciones</th></tr></thead>
  <tbody>
    @foreach($tasks as $t)
      <tr>
        <td>{{ $t->id }}</td>
        <td><a href="{{ route('tasks.show', $t) }}">{{ $t->title }}</a></td>
        <td>{{ $t->completed ? 'Sí' : 'No' }}</td>
        <td>
          <a href="{{ route('tasks.edit', $t) }}">Editar</a>
          <form method="POST" action="{{ route('tasks.destroy', $t) }}" style="display:inline">
            @csrf
            @method('DELETE')
            <button type="submit" onclick="return confirm('Eliminar?')">Eliminar</button>
          </form>
        </td>
      </tr>
    @endforeach
  </tbody>
</table>
