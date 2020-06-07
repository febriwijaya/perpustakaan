<?php

namespace App\Http\Controllers\Fronted;

use App\Book;
use App\BorrowHistory;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class BookController extends Controller
{
    public function index()
    {
        $book = Book::paginate(10);
        return view('frontend.templates.homepage', [
            'book' => $book,
        ]);
    }

    public function show(Book $book)
    {
        return view('frontend.templates.show', [
            'title' => $book->title,
            'book' => $book
        ]);
    }

    public function borrow(Book $book)
    {
        $user = auth()->user();

        if ($user->borrow()->isStillBorrow($book->id)) {
            return redirect()->back()->with('toast', 'Kamu sudah meminjam buku dengan judul : ' . $book->title);
        }

        $user->borrow()->attach($book);

        $book->decrement('qty');

        return redirect()->back()->with('toast', 'Berhasil meminjam buku');
    }
}
