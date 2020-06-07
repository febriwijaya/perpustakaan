@extends('admin.templates.default')

@section('content')
<div class="container-fluid">
  <h1 class="mt-4">Edit Data Author</h1>
  <div class="card mb-4">
    <div class="card-header"><i class="fas fa-table mr-1"></i> Edit Data Penulis</div>
    <div class="card-body">
      <form action="{{ route('admin.author.update', $author->id) }}" method="post">
        @csrf
        @method("PUT")

        <div class="form-group">
          <label for="nama">Nama</label>
          <input type="text" name="name" id="nama" class="form-control" value="{{ old('name') ?? $author->name }}">
          <p class="text-danger">{{ $errors->first('name') }}</p>
        </div>
        <div class="form-group">
          <button type="submit" class="btn btn-warning">Edit</button>
        </div>
      </form>
    </div>
  </div>
</div>


@endsection