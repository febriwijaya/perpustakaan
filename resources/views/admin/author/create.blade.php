@extends('admin.templates.default')

@section('content')
<div class="container-fluid">
  <div class="card mt-3">
    <div class="card-header">
      <h1 class="text-center">Tambah Data</h1>
    </div>
    <div class="card-body">
      <form action="{{ route('admin.author.store') }}" method="post">
        @csrf

        <div class="form-group">
          <label for="nama">Nama</label>
          <input type="text" name="name" id="nama" class="form-control" placeholder="masukkan nama penulis" value="{{ old('name') }}">
          <p class="text-danger">{{ $errors->first('name') }}</p>
        </div>

        <button type="submit" class="btn btn-success mt-4">Save</button>
      </form>
    </div>
  </div>
</div>


@endsection