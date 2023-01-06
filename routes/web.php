<?php

use App\Http\Controllers\ActorController;
use App\Http\Controllers\MovieController;
use App\Http\Controllers\UserController;
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

Route::post('/registers', [UserController::class, 'register']);

Route::post('/logins', [UserController::class, 'login']);

Route::get('/logout', [UserController::class, 'logout']);

Route::get('/addactor', [ActorController::class, 'addActor']);

Route::post('/insertactor', [ActorController::class, 'insertActor']);

Route::get('/actor', [ActorController::class, 'showActor']);

Route::get('/addmovie', [MovieController::class, 'addMovie']);

Route::post('/insertmovie', [MovieController::class, 'insertMovie']);

Route::get('/movies', [MovieController::class, 'index']);
Route::get('/', [MovieController::class, 'index']);

Route::get('/movies/{movie_id}', [MovieController::class, 'showMovie']);

Route::get('/watchlist', [UserController::class, 'watchlist']);

Route::get('/addWatchlist/{movie_id}', [UserController::class, 'addWatchlist']);