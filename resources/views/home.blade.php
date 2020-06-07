@extends('frontend.templates.default')

@section('content')
<div class="container">
    <div class="row">
        <h2 class="center">Buku yang sedang dipinjam</h2>
        @foreach ($books as $book)
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
                    </div>
                </div>
            </div>
        </div>
        @endforeach
    </div>
</div>

@endsection