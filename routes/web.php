<?php

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


/*Route::get('/', function () {
    return view('welcome');
});    default route
*/
Route::get('/', 'EventsController@index');
// Routes for EVENTS
Route::get('/events', 'EventsController@index');

Route::get('/events/{id}', 'EventsController@show');

Route::post('/events', 'EventsController@store');

Route::delete('/events/{event}', 'EventsController@destroy');

Route::patch('/events/{id}','EventsController@edit');

//  Routes for RIDERS
Route::get('/riders','RidersController@index');
Route::get('/riders2','RidersController@index2');

Route::post('/riders','RidersController@store');

Route::get('/addrider','RidersController@create');

//Routes for CATEGORY

Route::post('/category','CategoriesController@store');
Route::get('/category','CategoriesController@index');
Route::post('/category/{id}','CategoriesController@attach');
Route::get('/category/{cat}/{ri}','CategoriesController@detach');
