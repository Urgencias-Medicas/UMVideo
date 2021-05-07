<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Admin Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "admin" middleware group. Now create something great!
|
*/

Route::get('/admin', 'AdminController@index')->name('admin');
Route::post('/create', 'AdminController@create');
Route::post('/edit', 'AdminController@edit');
Route::get('/session', 'SessionController@index')->name('session');
Route::get('/session/export', 'SessionController@export')->name('export');
Route::get('/register', 'Auth\RegisterController@showRegistrationForm')->name('register');
Route::post('/register', 'Auth\RegisterController@register');
