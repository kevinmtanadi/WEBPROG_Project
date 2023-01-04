<!DOCTYPE html>
<html lang="en">
<head>
    @include('layout.head')
    <title>Movie</title>
</head>
<body class="d-flex flex-column min-vh-100">
    @include('layout.navbar')

    <div class="banner">
        <div class="w-100 bg_img" style="background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url({{Storage::url('images/movie/background/'.$movie->bg_url)}})">
            <div class="row" id="test" style="height: 45vh">
                <div class="col-4 text-center my-auto">
                    <img class="img-fluid" style="height: 40vh" src="{{Storage::url('images/movie/thumbnail/'.$movie->image_url)}}" alt="none">
                </div>
                <div class="col-8">
                    <h2 class="mt-3 fw-bold">{{$movie->title}}</h2>
                    <div class="genre my-3">
                        @foreach($movie->movieGenres as $genre)
                            <a href="" class="btn btn-outline-light me-1">{{$genre->genre->name}}</a>
                        @endforeach
                    </div>

                    <span>Release Year</span>
                    <p class="">{{ \Illuminate\Support\Str::limit($movie->release_date, 4, $end='')}}</p>

                    <h4 class="fw-bold">Storyline</h4>
                    <p>{{$movie->description}}</p>

                    <h4 class="fw-bold">{{$movie->director}}</h4>
                    <span>Director</span>
                </div>
            </div>
        </div>


    </div>

    <div class="container my-4">
        <h4>Cast</h4>

        <div class="row row-cols-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5 my-4">
            @foreach ($movie->movieActors as $actor)
            <div class="col my-2">
                <div class="card bg-1">
                    <img class="card-img-top" width="200px" height="270px" class="my-2" src="{{Storage::url('images/'.$actor->actor->image_url)}}" alt="None">
                    <div class="card-body">
                        <div class="card-title my-2">
                            {{ $actor->actor->name}}
                        </div>
                        <div class="card-text text-color-2">
                            {{ $actor->character_name}}
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
        </div>
    </div>

    @include('layout.footer')
</body>
</html>