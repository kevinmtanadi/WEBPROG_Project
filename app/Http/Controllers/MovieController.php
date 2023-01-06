<?php

namespace App\Http\Controllers;

use App\Models\Actor;
use App\Models\Character;
use App\Models\Genre;
use App\Models\Movie;
use App\Models\MovieActor;
use App\Models\MovieGenre;
use App\Models\Watchlist;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class MovieController extends Controller
{
    //
    function sortByCount($a, $b) {
        if($a->count == $b->count){ return 0 ; }
        return ($a->count < $b->count) ? -1 : 1;
    }

    public function index(Request $req) {
        $movies = Movie::all();
        $genres = Genre::all();

        $search = $req->search;

        $searched = Movie::where('title', 'LIKE', "%$search%")->get();

        $showcased = null;
        if (count($movies) >= 3) {
            $showcased = Movie::all()->random(3);
        }

        foreach ($movies as $m) {

            $watchlist = Watchlist::where('movie_id', $m->id)->get();
            $m->count = count($watchlist);
        }

        $movies = $movies->sortByDesc('count');

        return view('movie', ['movies' => $movies, 'genres' => $genres, 'sorted_movies' => $searched, 'showcased' => $showcased]);
    }

    public function sortShow($status){
        $movies = Movie::all();
        $genres = Genre::all();
        $showcased = Movie::all()->random(3);

        switch($status) {
            case 'latest':
                $sorted_movies = Movie::orderBy('release_date', 'asc')->paginate();
                return view('movie', ['movies' => $movies, 'genres' => $genres, 'sorted_movies' => $sorted_movies, 'showcased' => $showcased]);
                break;

            case 'sortascend':
                $sorted_movies = Movie::orderBy('title', 'asc')->paginate();
                return view('movie', ['movies' => $movies, 'genres' => $genres, 'sorted_movies' => $sorted_movies, 'showcased' => $showcased]);
                break;

            case 'sortdescend':
                $sorted_movies = Movie::orderBy('title', 'desc')->paginate();
                return view('movie', ['movies' => $movies, 'genres' => $genres, 'sorted_movies' => $sorted_movies, 'showcased' => $showcased]);
                break;
        }
    }

    public function showMovie($movie_id) {
        $movie = Movie::where('id', $movie_id)->first();
        $movies = Movie::all();
        if ($movies->count() > 5) {
            $more_movies = Movie::where('id', '<>', $movie_id)->random(5);
            return view('movie_detail', ['movie' => $movie, 'more_movies' => $more_movies]);
        }
        else {
            $more_movies = Movie::where('id', '<>', $movie_id)->get();
            return view('movie_detail', ['movie' => $movie, 'more_movies' => $more_movies]);
        }


    }

    public function showGenre($genre_id) {
        $movies = Movie::all();
        $genres = Genre::all();
        $showcased = Movie::all()->random(3);

        $movieGenre = MovieGenre::where('genre_id', $genre_id)->get();
        if (count($movieGenre) < 1) {
            return view('movie', ['movies' => $movies, 'genres' => $genres, 'sorted_movies' => null, 'showcased' => $showcased]);
        }
        $genreMovies = [];

        foreach ($movieGenre as $mg) {
            $movie = Movie::where('id', $mg->movie_id)->first();
            array_push($genreMovies, $movie);
        }
        return view('movie', ['movies' => $movies, 'genres' => $genres, 'sorted_movies' => $genreMovies, 'showcased' => $showcased]);
    }

    public function addMovie(Request $req) {
        $actors = Actor::all();
        $genres = Genre::all();

        return view ('add_movie', ['actors' => $actors, 'genres' => $genres]);
    }

    public function insertMovie(Request $req) {
        $req->validate([
            'title' => 'required|min:2|max:50',
            'description' => 'required|min:8',
            'director' => 'required|min:3',
            'actor-1' => 'required',
            'c-name-1' => 'required',
            'release_date' => 'required',
            'image_url' => 'required|file|mimes:jpeg,jpg,png,gif',
            'bg_url' => 'required|file|mimes:jpeg,jpg,png,gif',
        ]);

        $new_req = array_filter($req->all());

        $image = $req->file('image_url');
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

        $actors_id = [];
        $characters_name = [];
        foreach ($new_req as $key => $val) {
            if (str_starts_with($key, 'actor-')) {
                array_push($actors_id, $val);
            }
            if (str_starts_with($key, 'c-name-')) {
                array_push($characters_name, $val);
            }
        }

        $movie = Movie::where('title', $req->title)->first();

        for ($i = 0; $i < count($actors_id); $i++) {
            MovieActor::insert([
                'movie_id' => $movie->id,
                'actor_id' => $actors_id[$i],
                'character_name' => $characters_name[$i],
            ]);
        }

        $genres = $req->input('genre');

        foreach ($genres as $key => $val) {
            MovieGenre::insert([
                'movie_id' => $movie->id,
                'genre_id' => $val
            ]);
        }

        return redirect('/');
    }

    public function editMovie($id) {
        $movie = Movie::where('id', $id)->first();
        $genres = Genre::all();
        $actors = Actor::all();

        return view('edit_movie', ['movie' => $movie, 'genres' => $genres, 'actors' => $actors]);
    }

    public function executeEdit(Request $req, $id) {
        if ($req->hasFile('image_url')) {
            $movie = Movie::where('id', $id)->first();

            Storage::delete('public/images/movie/thumbnail'.$movie->image_url);

            $file = $req->file('image_url');
            $extension = $file->getClientOriginalExtension();
            $filename = 'movie_'.'.'.time().'.'.$extension;

            Storage::putFileAs('public/images/movie/thumbnail', $file, $filename);
            Movie::where('id', $id)->update([
                'image_url' => $filename
            ]);
        }

        if ($req->hasFile('bg_url')) {
            $movie = Movie::where('id', $id)->first();

            Storage::delete('public/images/movie/background'.$movie->bg_url);

            $file = $req->file('bg_url');
            $extension = $file->getClientOriginalExtension();
            $filename = 'bg_'.'.'.time().'.'.$extension;

            Storage::putFileAs('public/images/movie/background', $file, $filename);
            Movie::where('id', $id)->update([
                'bg_url' => $filename
            ]);
        }

        $req->validate([
            'title' => 'required|min:2|max:50',
            'description' => 'required|min:8',
            'director' => 'required|min:3',
            'actor-1' => 'required',
            'c-name-1' => 'required',
            'release_date' => 'required',
            'image_url' => 'required|file|mimes:jpeg,jpg,png,gif',
            'bg_url' => 'required|file|mimes:jpeg,jpg,png,gif',
        ]);

        Movie::where('id', $id)->update([
            'title' => $req->title,
            'description' => $req->description,
            'director' => $req->director,
            'release_date' => $req->release_date,
        ]);

        MovieGenre::where('movie_id', $id)->delete();
        MovieActor::where('movie_id', $id)->delete();

        $new_req = array_filter($req->all());

        $actors_id = [];
        $characters_name = [];
        foreach ($new_req as $key => $val) {
            if (str_starts_with($key, 'actor-')) {
                array_push($actors_id, $val);
            }
            if (str_starts_with($key, 'c-name-')) {
                array_push($characters_name, $val);
            }
        }

        $movie = Movie::where('title', $req->title)->first();

        for ($i = 0; $i < count($actors_id); $i++) {
            MovieActor::insert([
                'movie_id' => $movie->id,
                'actor_id' => $actors_id[$i],
                'character_name' => $characters_name[$i],
            ]);
        }

        $genres = $req->input('genre');

        foreach ($genres as $key => $val) {
            MovieGenre::insert([
                'movie_id' => $movie->id,
                'genre_id' => $val
            ]);
        }

        return redirect('/');
    }

    public function deleteMovie($id) {
        MovieActor::where('movie_id', $id)->delete();
        MovieGenre::where('genre_id', )->delete();
        Movie::where('id', $id)->delete();

        return redirect('/');
    }
}
