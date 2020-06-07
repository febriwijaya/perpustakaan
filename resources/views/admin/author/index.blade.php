@extends('admin.templates.default')

@section('content')
<div class="container-fluid">
  <h1 class="mt-4">Data Author</h1>
  <a href="{{ route('admin.author.create') }}" class="btn btn-primary mb-2">Tambah Penulis</a>

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
    <div class="card-header"><i class="fas fa-table mr-1"></i>Data Penulis</div>
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th>No</th>
              <th>Name</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            <?php $i = 1; ?>
            @foreach($author as $a)
            <tr>
              <td>{{ $i++ }}</td>
              <td>{{ $a->name }}</td>
              <td>
                <a href="{{ route('admin.author.edit', $a->id) }}" class="badge badge-warning">Edit</a>
                <button href="{{ route('admin.author.destroy', $a->id) }}" class="badge badge-danger" id="delete">Hapus</button>
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