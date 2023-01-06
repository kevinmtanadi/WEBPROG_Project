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

// ---------------------------------------------------------------- ACCOUNT ----------------------------------------------------------------
Route::get('/login', function () {
    return view('login');
});
Route::get('/register', function () {
    return view('register');
});
Route::post('/registers', [UserController::class, 'register']);
Route::post('/logins', [UserController::class, 'login']);
Route::get('/logout', [UserController::class, 'logout']);
Route::get('/profile', function() {
    return view('profile');
});
Route::post('/changeProfilePic', [UserController::class, 'updateProfilePic']);
Route::post('/updateUser', [UserController::class, 'updateUser']);
Route::get('/addAdmin', [UserController::class, 'addAdmin']);

// ---------------------------------------------------------------- WATCHLIST ----------------------------------------------------------------
Route::get('/watchlist/status/{status}', [UserController::class, 'watchlistStatus']);
Route::get('/watchlist', [UserController::class, 'watchlist']);
Route::get('/addWatchlist/{movie_id}', [UserController::class, 'addWatchlist']);
Route::get('/changestatus/{id}', [UserController::class, 'changeWatchlistStatus']);

// ---------------------------------------------------------------- ACTOR ----------------------------------------------------------------
Route::get('/addactor', [ActorController::class, 'addActor']);
Route::post('/insertactor', [ActorController::class, 'insertActor']);
Route::get('/actor', [ActorController::class, 'showActor']);
Route::get('/actor/{id}', [ActorController::class, 'specificActor']);
Route::get('/editactor/{id}', [ActorController::class, 'editActor']);
Route::get('/deleteactor/{id}', [ActorController::class, 'deleteActor']);
Route::post('/executeedit/{id}', [ActorController::class, 'executeEdit']);

// ---------------------------------------------------------------- MOVIE ----------------------------------------------------------------
Route::get('/addmovie', [MovieController::class, 'addMovie']);
Route::post('/insertmovie', [MovieController::class, 'insertMovie']);
Route::get('/movies', [MovieController::class, 'index']);
Route::get('/{status}', [MovieController::class, 'sortShow']);
Route::get('/movies/{movie_id}', [MovieController::class, 'showMovie']);
Route::get('/movies/genre/{id}', [MovieController::class, 'showGenre']);
Route::get('/editmovie/{id}', [MovieController::class, 'editMovie']);
Route::post('/executeedit/{id}', [MovieController::class, 'executeEdit']);
Route::get('/deletemovie/{id}', [MovieController::class, 'deleteMovie']);
Route::get('/', [MovieController::class, 'index']);