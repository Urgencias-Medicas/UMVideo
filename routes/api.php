<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::GET('getLink', 'UserController@getLink');

Route::GET('getLinkAfiliado', 'UserController@getLinkAfiliado');

Route::POST('insertClient', 'ClientController@insertClient');

Route::POST('notify', 'ClientController@notifyUser');

Route::POST('leaveQueue', 'QueueController@removeFromQueue');

Route::POST('releaseDr', 'UserController@releaseUser');

Route::POST('signOut', 'ClientController@closeSessionClient');

Route::POST('setRecInfo', 'SessionController@setRecording');

Route::GET('testApi/{test}', 'SessionController@testApi');

Route::GET('cryptId/{id}', 'SessionController@cryptId');

Route::GET('decrypt/{text}', 'SessionController@decrypt');

Route::GET('testNotifications', 'UserController@testNotifications');

Route::GET('getRecords', 'RecordController@index');

Route::POST('reviewDr', 'SessionController@reviewSession');

