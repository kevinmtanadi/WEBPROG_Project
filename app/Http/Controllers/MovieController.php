<?php

namespace App\Http\Controllers;

use App\Models\Actor;
use App\Models\Movie;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class MovieController extends Controller
{
    //

    public function addMovie(Request $req) {
        $actors = Actor::all();

        return view ('add_movie', ['actors' => $actors]);
    }

    public function insertMovie(Request $req) {
        $rules = [
            'title' => 'required|min:2|max:50',
            'description' => 'required|min:8',
            'genre' => 'required',
            'actor' => 'required',
            'c_name' => 'required',
            'director' => 'required|min:3',
            'release_date' => 'required',
            'image_url' => 'required|file|mimes:jpeg,jpg,png,gif',
            'bg_url' => 'required|file|mimes:jpeg,jpg,png,gif',
        ];

        // Validator needs some tweaking to take data for multiple actors and add character names
        // $validator = Validator::make($req->all(), $rules);

        $image = $req->file('img_url');
        $extension = $image->getClientOriginalExtension();
        $image_filename = 'movie_'.'.'.time().'.'.$extension;

        $bg = $req->file('bg_url');
        $extension = $bg->getClientOriginalExtension();
        $bg_filename = 'bg_'.'.'.time().'.'.$extension;

        Storage::putFileAs('public/images/movie/thumbnail', $image, $image_filename);
        Storage::putFileAs('public/images/movie/background', $bg, $bg_filename);

        Movie::insert([
            'title' => $req->title,
            'description' => $req->description,
            'genre_id' => $req->genre,
            'actor_id' => $req->actor,
            'director' => $req->director,
            'release_date' => $req->release_date,
            'image_url' => $image_filename,
            'bg_url' => $bg_filename
        ]);

    }
}
