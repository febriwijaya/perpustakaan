@extends('frontend.templates.default')

@section('content')
<div class="container">
  <h2 class="center">Koleksi Buku</h2>
  <blockquote>
    <p class="flow-text">Koleksi buku yang bisa kamu baca dan pinjam</p>
  </blockquote>

  <div class="row">
    @foreach($book as $b)
    <div class="col s12 m6">
      <div class="card horizontal hoverable">
        <div class="card-image">
          <img src="{{ $b->getCover() }}" height="200" width="130">
        </div>
        <div class="card-stacked">
          <div class="card-content">
            <h6>
              <a href="{{ route('book.show', $b) }}"> {{ Str::limit($b->title, 20) }} </a>
            </h6>
            <p>{{ Str::limit($b->description, 100) }}</p>
          </div>
          <div class="card-action">
            <form action="{{ route('book.borrow', $b) }}" method="post">
              @csrf
              <input type="submit" value="Pinjam Buku" class="btn purple darken-4 right waves-effect waves-light">
            </form>
          </div>
        </div>
      </div>
    </div>
    @endforeach
  </div>
</div>

<div class="container">
  <div class="row">
    {{ $book->links('vendor.pagination.materialize') }}
  </div>
</div>
@endsection