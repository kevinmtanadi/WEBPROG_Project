<?php

use App\Http\Controllers\ActorController;
use App\Http\Controllers\MovieController;
use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('home');
});

Route::get('/login', function () {
    return view('login');
});

Route::get('/register', function () {
    return view('register');
});

Route::get('/addactor', [ActorController::class, 'addActor']);

Route::post('/insertactor', [ActorController::class, 'insertActor']);

Route::get('/actor', [ActorController::class, 'showActor']);

Route::get('/addmovie', [MovieController::class, 'addMovie']);