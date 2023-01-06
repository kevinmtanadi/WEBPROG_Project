<?php

namespace App\Http\Controllers;

use App\Models\Movie;
use App\Models\User;
use App\Models\Watchlist;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    //

    public function register(Request $req) {
        $rules = [
            'username' => 'required|min:5|unique:users,username',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|alpha_num|min:6|confirmed',
        ];



        $validator = Validator::make($req->all(), $rules);
        if ($validator->fails()) {
            return back()->withErrors($validator);
        }

        User::insert([
            'username' => $req->username,
            'email' => $req->email,
            'password' => bcrypt($req->password),
            'created_at' => Carbon::now(),
        ]);

        $credentials = [
            'email' => $req->email,
            'password' => $req->password
        ];

        $user = User::where('username', $req->username)->first();

        Auth::loginUsingId($user->id);

        return redirect('/');
    }

    public function login(Request $req) {
        $credentials = [
            'email' => $req->email,
            'password' => $req->password
        ];

        if (Auth::attempt($credentials, true)) {
            if($req->remember) {
                Cookie::queue('mycookie', $req->email, 120);
            }
            Session::put('mysession', $credentials);
            return redirect('/');
        }

        return redirect('/');
    }

    public function logout() {
        Auth::logout();

        return redirect()->back();
    }

    public function watchlist(Request $req) {
        $search = $req->search;

        $user_watchlists = Auth::user()->watchlists;
        $watchlists = [];

        foreach ($user_watchlists as $w) {
            $movie = Movie::where('id', $w->movie_id)->first();
            if (stripos($movie->title, $search) !== false) {
                array_push($watchlists, $w);
            }
        }

        return view('watchlist', ['watchlists' => $watchlists]);
    }

    public function addWatchlist($id) {
        Watchlist::insert([
            'user_id' => Auth::user()->id,
            'movie_id' => $id,
            'status' => 'Planning'
        ]);

        return redirect()->back();
    }
}
