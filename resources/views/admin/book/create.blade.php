@extends('admin.templates.default')

@section('content')
<div class="container-fluid">
  <div class="card mt-3">
    <div class="card-header">
      <h1 class="text-center">Tambah Data</h1>
    </div>
    <div class="card-body">
      <form action="{{ route('admin.book.store') }}" method="post" enctype="multipart/form-data">
        @csrf

        <div class="form-group">
          <label for="judul">Judul</label>
          <input type="text" name="title" id="judul" class="form-control" value="{{ old('title') }}" placeholder="Masukkan judul buku">
          <p class="text-danger">{{ $errors->first('title') }}</p>
        </div>

        <div class="form-group">
          <label for="deskripsi">Deskripsi</label>
          <textarea name="description" id="deskripsi" cols="30" rows="5" placeholder="masukkan deskripsi" class="form-control">{{ old('description') }}</textarea>
          <p class="text-danger">{{ $errors->first('description') }}</p>
        </div>

        <div class="form-group">
          <label for="Penulis">Penulis</label>
          <select name="author_id" id="Penulis" class="form-control">
            @foreach ($authors as $a)
            <option value="{{ $a->id }}">{{ $a->name }}</option>
            @endforeach
          </select>
          <p class="text-danger">{{ $errors->first('author_id') }}</p>
        </div>

        <div class="form-group">
          <label for="sampul">Sampul</label>
          <input type="file" name="cover" id="sampul" class="form-control">
          <p class="text-danger">{{ $errors->first('cover') }}</p>
        </div>

        <div class="form-group">
          <label for="qty">Qty</label>
          <input type="text" name="qty" id="qty" class="form-control" placeholder="masukkan jumlah">
          <p class="text-danger">{{ $errors->first('qty') }}</p>
        </div>

        <button type="submit" class="btn btn-success mt-4">Save</button>
      </form>
    </div>
  </div>
</div>
@endsection