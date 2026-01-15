<form method="POST" action="{{ $action }}">
  @csrf
  @if($method === 'PUT')
    @method('PUT')
  @endif

  <div>
    <label>Título</label>
    <input name="title" value="{{ old('title', $task->title ?? '') }}">
  </div>

  <div>
    <label>Descripción</label>
    <textarea name="description">{{ old('description', $task->description ?? '') }}</textarea>
  </div>

  <div>
    <label>
      <input type="checkbox" name="completed" {{ old('completed', $task->completed ?? false) ? 'checked' : '' }}>
      Completada
    </label>
  </div>

  <button type="submit">Guardar</button>
</form>
