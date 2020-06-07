@extends('frontend.templates.default')

@section('content')
<h5 class="center">Detail Buku</h5>
<div class="container">
  <div class="row">
    <div class="col s12 m12">
      <div class="card horizontal hoverable">
        <img src="{{ $book->getCover() }}">
        <div class="card-stacked">
          <div class="card-content">
            <h3>{{ $book->title }}</h3>
            <blockquote>
              <p>{{ $book->description }}</p>
            </blockquote>
            <p>
              <i class="material-icons">person</i> : {{ $book->author->name }}
            </p>
            <p>
              <i class="material-icons">book</i> : {{ $book->qty }}
            </p>
          </div>
          <div class="card-action">
            <form action="{{ route('book.borrow', $book) }}" method="post">
              @csrf
              <input type="submit" value="Pinjam Buku" class="btn purple darken-4 right waves-effect waves-light">
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<h4 class="center">Buku Lainnya dari penulis {{ $book->author->name }}</h4>
<div class="container">
  <div class="row">
    @foreach($book->author->books->shuffle()->take(4) as $book)
    <div class="col s12 m6">
      <div class="card horizontal">
        <div class="card-image">
          <img src="{{ $book->getCover() }}" height="200" width="130">
        </div>
        <div class="card-stacked">
          <div class="card-content">
            <h6>
              <a href="{{ route('book.show', $book) }}"> {{ Str::limit($book->title, 20) }} </a>
            </h6>
            <p>{{ Str::limit($book->description, 100) }}</p>
          </div>
          <div class="card-action">
            <form action="{{ route('book.borrow', $book) }}" method="post">
              @csrf
              <input type="submit" value="Pinjam Buku" class="btn green darken-4 right waves-effect waves-light">
            </form>
          </div>
        </div>
      </div>
    </div>
    @endforeach
  </div>
</div>

@endsection