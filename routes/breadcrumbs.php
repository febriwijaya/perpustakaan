<?php

// Home
Breadcrumbs::for('admin.dashboard', function ($trail) {
  $trail->push('Beranda', route('admin.dashboard'));
});

// Author Index
Breadcrumbs::for('admin.author.index', function ($trail) {
  $trail->push('Beranda', route('admin.dashboard'));
  $trail->push('Penulis', route('admin.author.index'));
});

//Author create 
Breadcrumbs::for('admin.author.create', function ($trail) {
  $trail->push('Beranda', route('admin.dashboard'));
  $trail->push('Penulis', route('admin.author.index'));
  $trail->push('Tambah Penulis', route('admin.author.create'));
});

// Author edit
Breadcrumbs::for('admin.author.edit', function ($trail, $author) {
  $trail->push('Beranda', route('admin.dashboard'));
  $trail->push('Penulis', route('admin.author.index'));
  $trail->push('Edit Penulis', route('admin.author.edit', $author));
});

// Book index
Breadcrumbs::for('admin.book.index', function ($trail) {
  $trail->push('Beranda', route('admin.dashboard'));
  $trail->push('Data Buku', route('admin.book.index'));
});

//Author create 
Breadcrumbs::for('admin.book.create', function ($trail) {
  $trail->push('Beranda', route('admin.dashboard'));
  $trail->push('Data Buku', route('admin.book.index'));
  $trail->push('Tambah Buku', route('admin.book.create'));
});

// Book edit
Breadcrumbs::for('admin.book.edit', function ($trail, $book) {
  $trail->push('Beranda', route('admin.dashboard'));
  $trail->push('Buku', route('admin.book.index'));
  $trail->push('Edit Buku', route('admin.book.edit', $book));
});

// Borrow index
Breadcrumbs::for('admin.borrow.index', function ($trail) {
  $trail->push('Beranda', route('admin.dashboard'));
  $trail->push('Data Peminjaman', route('admin.borrow.index'));
});

// Report Top Book
Breadcrumbs::for('admin.report.top-book', function ($trail) {
  $trail->push('Beranda', route('admin.dashboard'));
});

// Report Top User
Breadcrumbs::for('admin.report.top-user', function ($trail) {
  $trail->push('Beranda', route('admin.dashboard'));
});
