@extends('admin.templates.default')

@section('content')
<div class="container-fluid">

  <div class="card mb-4">
    <div class="card-header"><i class="fas fa-table mr-1"></i>Laporan Buku Terlaris</div>
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th>No</th>
              <th>Judul</th>
              <th>Deskripsi</th>
              <th>Jumlah Buku</th>
              <th>Total Dipinjam</th>
              <th>Penulis</th>
              <th>Sampul</th>
            </tr>
          </thead>
          <tbody>
            <?php $i = 1; ?>
            @foreach($books as $book)
            <tr>
              <td>{{ $i++ }}</td>
              <td>{{ $book->title }}</td>
              <td>{{ $book->description }}</td>
              <td>{{ $book->qty }}</td>
              <td>{{ $book->borrowed_count }}</td>
              <td>{{ $book->author->name }}</td>
              <td><img src="{{ $book->getCover() }}" height="50" width="50" alt="{{ $book->title }}"></td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>
@endsection