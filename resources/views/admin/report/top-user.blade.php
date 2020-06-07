@extends('admin.templates.default')

@section('content')
<div class="container-fluid">

  <div class="card mb-4">
    <div class="card-header"><i class="fas fa-table mr-1"></i>Laporan User Teraktif</div>
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th>No</th>
              <th>Nama</th>
              <th>Email</th>
              <th>Jumlah Peminjaman</th>
              <th>Bergabung</th>
            </tr>
          </thead>
          <tbody>
            <?php $i = 1; ?>
            @foreach($users as $book)
            <tr>
              <td>{{ $i++ }}</td>
              <td>{{ $book->name }}</td>
              <td>{{ $book->email }}</td>
              <td>{{ $book->borrow_count }}</td>
              <td>{{ $book->created_at->diffForHumans() }}</td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>
@endsection