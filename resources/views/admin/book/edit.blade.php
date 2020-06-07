@extends('admin.templates.default')

@section('content')
<div class="container-fluid">
  <h1 class="mt-4">Edit Data Buku</h1>
  <div class="card mb-4">
    <div class="card-header"><i class="fas fa-table mr-1"></i> Edit Data Buku</div>
    <div class="card-body">
      <form action="{{ route('admin.book.update', $book->id) }}" method="post" enctype="multipart/form-data">
        @csrf
        @method("PUT")

        <div class="form-group">
          <label for="judul">Judul</label>
          <input type="text" name="title" id="judul" class="form-control" value="{{ $book->title ?? old('title') }}" placeholder="Masukkan judul buku">
          <p class="text-danger">{{ $errors->first('title') }}</p>
        </div>

        <div class="form-group">
          <label for="deskripsi">Deskripsi</label>
          <textarea name="description" id="deskripsi" cols="30" rows="5" placeholder="masukkan deskripsi" class="form-control">{{ $book->description ?? old('description') }}</textarea>
          <p class="text-danger">{{ $errors->first('description') }}</p>
        </div>

        <div class="form-group">
          <label for="penulis">Penulis</label>
          <select name="author_id" id="penulis" class="form-control">
            @foreach ($authors as $a)
            <option value="{{ $a->id }}" @if ($a->id === $book->author_id)
              selected
              @endif>
              {{ $a->name }}
            </option>
            @endforeach
          </select>
          <p class="text-danger">{{ $errors->first('author_id') }}</p>
        </div>

        <div class="form-group">
          <label for="sampul">Sampul</label>
          <input type="file" name="cover" id="sampul" class="form-control" value="{{ $book->cover ?? old('cover') }}">
          <small>(Kosongkan jika tidak mau diubah)</small>
          <p class="text-danger">{{ $errors->first('cover') }}</p>
        </div>

        <div class="form-group">
          <label for="qty">Qty</label>
          <input type="text" name="qty" id="qty" class="form-control" placeholder="masukkan jumlah" value="{{ $book->qty ?? old('qty') }}">
          <p class="text-danger">{{ $errors->first('qty') }}</p>
        </div>
        <div class="form-group">
          <button type="submit" class="btn btn-warning">Edit</button>
        </div>
      </form>
    </div>
  </div>
</div>


@endsection