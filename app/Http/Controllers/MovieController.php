<?php

namespace App\Http\Controllers;

use App\Models\Actor;
use App\Models\Character;
use App\Models\Genre;
use App\Models\Movie;
use App\Models\MovieActor;
use App\Models\MovieGenre;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class MovieController extends Controller
{
    //

    public function showMovie(Request $req) {
        $movies = Movie::all();

        return view('movie_detail', ['movies' => $movies]);
    }

    public function addMovie(Request $req) {
        $actors = Actor::all();
        $genres = Genre::all();

        return view ('add_movie', ['actors' => $actors, 'genres' => $genres]);
    }

    public function insertMovie(Request $req) {
        $rules = [
            'title' => 'required|min:2|max:50',
            'description' => 'required|min:8',
            'director' => 'required|min:3',
            'actor-1' => 'required',
            'c-name-1' => 'required',
            'release_date' => 'required',
            'image_url' => 'required|file|mimes:jpeg,jpg,png,gif',
            'bg_url' => 'required|file|mimes:jpeg,jpg,png,gif',
        ];

        $new_req = array_filter($req->all());

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
            'director' => $req->director,
            'release_date' => $req->release_date,
            'image_url' => $image_filename,
            'bg_url' => $bg_filename
        ]);

        $movie = Movie::where('title', $req->title)->first();

        return $new_req;

        foreach ($new_req as $key => $val) {

            if (str_starts_with($key, 'actor-')) {
                $actor = Actor::where('id', $val)->first();

                MovieActor::insert([
                    'movie_id' => $movie->id,
                    'actor_id' => $val,
                    //'character_name' => Something idk
                ]);
            }
        }

        $genres = $req->input('genre');

        foreach ($genres as $key => $val) {
            MovieGenre::insert([
                'movie_id' => $movie->id,
                'genre_id' => $val
            ]);
        }


        // Movie::insert([
        //     'title' => $req->title,
        //     'description' => $req->description,
        //     'genre_id' => $req->genre,
        //     'actor_id' => $req->actor,
        //     'director' => $req->director,
        //     'release_date' => $req->release_date,
        //     'image_url' => $image_filename,
        //     'bg_url' => $bg_filename
        // ]);

        return redirect('/');

    }
}
