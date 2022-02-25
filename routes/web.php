<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Auth::routes(['register' => false]);

Route::match(['get', 'post'], '/', 'HomeController@index')->name('home');

Route::get('/enviarNotificacion/{id}/{title}/{body}/{link}', 'HomeController@send');

Route::get('/appointments', 'SessionController@appointments')->name('appointments');
Route::get('/appointmentsexport', 'SessionController@exportAppointments')->name('exportAppointments');

Route::group(['prefix' => 'appointments'], function () {
    Route::get('/{id}', 'SessionController@viewAppointment')->name('appointments.index');
    Route::get('/{id}/edit', 'AppointmentController@edit')->name('appointments.edit');
    Route::get('/{id}/end', 'SessionController@endAppointment')->name('appointments.end');
});