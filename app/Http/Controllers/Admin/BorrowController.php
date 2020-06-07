<?php

namespace App\Http\Controllers\Admin;

use App\BorrowHistory;
use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Illuminate\Http\Request;


class BorrowController extends Controller
{
    public function index(BorrowHistory $borrow)
    {
        $title = 'Peminjaman';
        $borrow = BorrowHistory::isBorrowed()->get();
        $borrow->load('user', 'book');

        return view('admin.borrow.index', [
            'borrow' => $borrow,
            'title' => $title,
        ]);
    }

    public function returnBook(Request $request, BorrowHistory $borrow)
    {
        $borrow->update([
            'returned_at' => Carbon::now(),
            'admin_id' => auth()->id(),
        ]);

        $borrow->book()->increment('qty');

        return redirect()->route('admin.borrow.index')->with('success', 'Data Buku berhasil dikembalikan');
    }
}
