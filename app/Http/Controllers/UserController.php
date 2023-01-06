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
use Illuminate\Support\Facades\Storage;
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
            'dob' => Carbon::now(),
            'image_url' => 'profile.webp',
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

    public function updateUser(Request $req) {
        $user = Auth::user();

        User::where('id', $user->id)->update([
            'username' => $req->username,
            'email' => $req->email,
            'dob' => $req->dob,
            'phone' => $req->phone,
        ]);

        return redirect()->back();
    }

    public function updateProfilePic(Request $req) {
        $user = Auth::user();

        $file = $req->file('image_url');

        $extension = $file->getClientOriginalExtension();
        $filename = $user->username.'.'.time().'.'.$extension;


        if($user->image_url != 'profile.webp')
        {
            Storage::delete('public/images/'.$user->image_url);
        }

        Storage::putFileAs('public/images/', $file, $filename);
        User::where('id', $user->id)->update([
            'image_url' => $filename,
        ]);

        User::where('id', )->update([
            'image_url' => $req->image_url
        ]);

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

    public function watchlistStatus(Request $req, $status) {
        if ($status == 'all') {
            return view('watchlist', ['watchlists' => Auth::user()->watchlists]);
        }

        $user_watchlists = Auth::user()->watchlists;
        $watchlists = [];

        foreach ($user_watchlists as $w) {
            if (strcasecmp($w->status, $status) == 0) {
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

    public function changeWatchlistStatus(Request $req, $id) {
        $status = $req->status;

        if(strcasecmp($status, 'remove') == 0) {
            Watchlist::where('id', $id)->delete();
            return redirect()->back();
        }

        $watchlist = Watchlist::where('id', $id)->first();
        if(strcasecmp($watchlist->status, $status) == 0) {
            return redirect()->back();
        }

        Watchlist::where('id', $id)->update([
            'status' => $status,
        ]);

        return redirect()->back();
    }

    public function addAdmin() {
        User::insert([
            'username' => 'admin',
            'email' => 'admin@example.com',
            'password' => bcrypt('admin'),
            'dob' => Carbon::now(),
            'image_url' => 'profile.webp',
            'role' => 'admin',
            'created_at' => Carbon::now(),
        ]);
    }
}
