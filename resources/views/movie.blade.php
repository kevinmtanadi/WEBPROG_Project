<!DOCTYPE html>
<html lang="en">
<head>
    @include('layout.head')
    <title>Home</title>
</head>
<body class="d-flex flex-column min-vh-100">
    @include('layout.navbar')

    <a class="banner text-decoration-none text-white" href="/movies/{{ $movies[0]->id }}">
        <div class="w-100 bg_img" style="background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url({{Storage::url('images/movie/background/'.$movies[0]->bg_url)}})">
            <div class="wrapper">
                <span class="mb-2">{{ $movies[0]->movieGenres[0]->genre->name }} | {{ \Illuminate\Support\Str::limit($movies[0]->release_date, 4, $end='') }}</span>

                <div class="">
                    <h3 class="fw-bold">{{ $movies[0]->title}}</h3>
                </div>
                <p>{{ $movies[0]->description }}</p>
            </div>

        </div>
    </div>
    </a>

    <div class="container my-3">
        <h4 class="mb-3">Popular</h4>
        <div class="row">
            <div class="row row-cols-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5 my-4">
                @foreach ($movies as $movie)
                    <div class="col">
                        <a href="/movies/{{ $movie->id }}">
                            <div class="card bg-1">
                                <img class="card-img-top img-fluid" class="my-2" src="{{Storage::url('images/movie/thumbnail/'.$movie->image_url)}}" alt="None">
                                <div class="card-body">
                                    <div class="card-title my-2">
                                        {{ $movie->title }}
                                    </div>
                                    <div class="card-text text-color-2">
                                        {{ \Illuminate\Support\Str::limit($movie->release_date, 4, $end='') }}
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                @endforeach
            </div>
        </div>
    </div>

    @include('layout.footer')
</body>
</html>