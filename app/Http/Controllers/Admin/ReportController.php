<?php

namespace App\Http\Controllers\Admin;

use App\Book;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;

class ReportController extends Controller
{
    public function topBook()
    {
        $title = "Buku yang paling sering dipinjam";
        $books = Book::withCount('borrowed')
            ->orderBy('borrowed_count', 'desc')
            ->get();
        return view('admin.report.top-book', [
            'books' => $books,
            'title' => $title,
        ]);
    }

    public function topUser()
    {
        $title = "User yang paling aktif";
        $users = User::withCount('borrow')
            ->orderBy('borrow_count', 'desc')
            ->get();

        return view('admin.report.top-user', [
            'users' => $users,
            'title' => $title
        ]);
    }
}
