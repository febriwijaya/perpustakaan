@extends('admin.templates.default')

@section('content')
<div class="container-fluid">
  <h1 class="mt-4">Data Buku</h1>
  <a href="{{ route('admin.book.create') }}" class="btn btn-primary mb-2">Tambah Data Buku</a>

  @if(session('success'))
  <div class="row">
    <div class="col-md">
      <div class="alert alert-success alert-dismissible fade show text-center" role="alert">
        {{ session('success') }}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
    </div>
  </div>
  @endif

  @if(session('info'))
  <div class="row">
    <div class="col-md">
      <div class="alert alert-success alert-dismissible fade show text-center" role="alert">
        {{ session('info') }}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
    </div>
  </div>
  @endif

  <div class="card mb-4">
    <div class="card-header"><i class="fas fa-table mr-1"></i>Data Buku</div>
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th>No</th>
              <th>Judul</th>
              <th>Deskripsi</th>
              <th>Penulis</th>
              <th>Sampul</th>
              <th>Qty</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            <?php $i = 1; ?>
            @foreach($book as $b)
            <tr>
              <td>{{ $i++ }}</td>
              <td>{{ $b->title }}</td>
              <td>{{ $b->description }}</td>
              <td>{{ $b->author->name }}</td>
              <td><img src="{{ $b->getCover() }}" height="50" width="50"></td>
              <td>{{ $b->qty }}</td>
              <td>
                <a href="{{ route('admin.book.edit', $b->id) }}" class="badge badge-warning">Edit</a>
                <button href="{{ route('admin.book.destroy', $b->id) }}" class="badge badge-danger" id="delete">Hapus</button>
              </td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>

<form action="" method="post" id="deleteForm">
  @csrf
  @method("DELETE")
  <input type="submit" value="Hapus" style="display: none;">
</form>
@endsection