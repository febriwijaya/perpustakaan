<?php

Route::get('/', 'HomeController@index')->name('dashboard');

Route::get('/author', 'AuthorController@index')->name('author.index');

Route::get('/author/create', 'AuthorController@create')->name('author.create');

Route::post('/author/store', 'AuthorController@store')->name('author.store');

Route::get('/author/data', 'DataController@authors')->name('author.data');

Route::get('/author/edit/{id}', 'AuthorController@edit')->name('author.edit');

Route::delete('/author/destroy/{id}', 'AuthorController@destroy')->name('author.destroy');

Route::put('/author/update/{id}', 'AuthorController@update')->name('author.update');

// Route Buku
Route::get('/book', 'BookController@index')->name('book.index');

Route::get('/book/create', 'BookController@create')->name('book.create');

Route::post('/book/store', 'BookController@store')->name('book.store');

Route::get('/book/edit/{id}', 'BookController@edit')->name('book.edit');

Route::delete('/book/destroy/{id}', 'BookController@destroy')->name('book.destroy');

Route::put('/book/update/{id}', 'BookController@update')->name('book.update');

// Route Borrow
Route::get('/borrow', 'BorrowController@index')->name('borrow.index');

Route::put('/borrow/{borrow}/return', 'BorrowController@returnBook')->name('borrow.return');

Route::get('/report/top-book', 'ReportController@topBook')->name('report.top-book');

Route::get('/report/top-user', 'ReportController@topUser')->name('report.top-user');
