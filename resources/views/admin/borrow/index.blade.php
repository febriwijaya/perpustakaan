@extends('admin.templates.default2')

@section('content')
<div class="container-fluid">
  <h1 class="mt-4">Data Peminjaman Buku</h1>

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

  <div class="card mb-4">
    <div class="card-header"><i class="fas fa-table mr-1"></i>Data Peminjaman</div>
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th>No</th>
              <th>Nama</th>
              <th>Judul Buku</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            <?php $i = 1; ?>
            @foreach($borrow as $b)
            <tr>
              <td>{{ $i++ }}</td>
              <td>{{ $b->user->name }}</td>
              <td>{{ $b->book->title }}</td>
              <td>
                <button href="{{ route('admin.borrow.return', $b) }}" class="badge badge-danger" id="delete">Pengembalian Buku</button>
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
  @method("PUT")
  <input type="submit" value="Return" style="display: none;">
</form>
@endsection