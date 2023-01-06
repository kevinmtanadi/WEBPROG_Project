<!DOCTYPE html>
<html lang="en">
<head>
    @include('layout.head')
    <title>Home</title>
</head>
<body class="d-flex flex-column min-vh-100">
    @include('layout.navbar')

    <div id="carouselExampleIndicators" class="carousel slide">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <a class="banner text-decoration-none text-white" href="/movies/{{ $showcased[0]->id }}">
                    <div class="w-100 bg_img" style="background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url({{Storage::url('images/movie/background/'.$showcased[0]->bg_url)}})">
                        <div class="wrapper">
                            <span class="mb-2">{{ $showcased[0]->movieGenres[0]->genre->name }} | {{ \Illuminate\Support\Str::limit($showcased[0]->release_date, 4, $end='') }}</span>

                            <div class="">
                                <h3 class="fw-bold">{{ $showcased[0]->title}}</h3>
                            </div>
                            <p>{{ $showcased[0]->description }}</p>
                        </div>

                    </div>
                </a>
            </div>
            <div class="carousel-item">
                <a class="banner text-decoration-none text-white" href="/movies/{{ $showcased[1]->id }}">
                    <div class="w-100 bg_img" style="background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url({{Storage::url('images/movie/background/'.$showcased[1]->bg_url)}})">
                        <div class="wrapper">
                            <span class="mb-2">{{ $showcased[1]->movieGenres[0]->genre->name }} | {{ \Illuminate\Support\Str::limit($showcased[1]->release_date, 4, $end='') }}</span>

                            <div class="">
                                <h3 class="fw-bold">{{ $showcased[1]->title}}</h3>
                            </div>
                            <p>{{ $showcased[1]->description }}</p>
                        </div>

                    </div>
                </a>
            </div>
            <div class="carousel-item">
                <a class="banner text-decoration-none text-white" href="/movies/{{ $showcased[2]->id }}">
                    <div class="w-100 bg_img" style="background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url({{Storage::url('images/movie/background/'.$showcased[2]->bg_url)}})">
                        <div class="wrapper">
                            <span class="mb-2">{{ $showcased[2]->movieGenres[0]->genre->name }} | {{ \Illuminate\Support\Str::limit($showcased[2]->release_date, 4, $end='') }}</span>

                            <div class="">
                                <h3 class="fw-bold">{{ $showcased[2]->title}}</h3>
                            </div>
                            <p>{{ $showcased[2]->description }}</p>
                        </div>

                    </div>
                </a>
            </div>

          </div>
          <div class="carousel-item">
            <img src="..." class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="..." class="d-block w-100" alt="...">
          </div>
        </div>
    </div>

    <div class="container my-3">
        <h4 class="mb-3">Popular</h4>
        <hr>
        <div class="row">
            <div class="row row-cols-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5 my-4">
                @foreach ($movies as $movie)
                    <div class="col my-2">
                        <a href="/movies/{{ $movie->id }}">
                            <div class="card bg-1">
                                <img class="card-img-top img-poster img-fluid w-100" class="my-2" src="{{Storage::url('images/movie/thumbnail/'.$movie->image_url)}}" alt="None">
                                <div class="card-body">
                                    <div class="card-title my-2">
                                        {{ \Illuminate\Support\Str::limit($movie->title, 18, $end='...') }}
                                    </div>
                                    <div class="card-text text-color-2 d-flex justify-content-between">
                                        {{ \Illuminate\Support\Str::limit($movie->release_date, 4, $end='') }}

                                        @auth
                                            @if (Auth::user()->role == 'member')
                                                @if (count(Auth::user()->watchlists) == 0)
                                                    <a href="/addWatchlist/{{$movie->id}}">
                                                        <i class="fa-solid fa-plus"></i>
                                                    </a>
                                                @else
                                                    @php
                                                    $exist = False
                                                    @endphp
                                                    @foreach (Auth::user()->watchlists as $w)
                                                        @if ($movie->id == $w->movie_id)
                                                            {{$exist = True}}
                                                            @break
                                                        @else
                                                            {{$exist = False}}
                                                        @endif
                                                    @endforeach
                                                    @if ($exist)
                                                        <i class="fa-solid fa-check text-color-1"></i>
                                                    @else
                                                        <a href="/addWatchlist/{{$movie->id}}">
                                                            <i class="fa-solid fa-plus"></i>
                                                        </a>
                                                    @endif

                                                @endif
                                            @endif
                                        @endif
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                @endforeach
            </div>
        </div>

        <form class="d-flex justify-content-between" action="/movies">
            <h4 class="mb-3">Show</h4>
            <input class="input-text b-radius px-3" type="text" name="search" id="search" placeholder="Search movie">
        </form>
        <hr>
        <div class="row my-3">
        @foreach ($genres as $genre)
            <a href="movies/genre/{{$genre->id}}" class="btn btn-secondary bg-1 col-1">{{ $genre->name }}</a>
        @endforeach
        </div>
        <div class="d-flex align-items-center">
            <span>Sort By</span>
            <a href="/latest" class="btn btn-secondary bg-1 mx-2">Latest</a>
            <a href="/sortascend" class="btn btn-secondary bg-1 mx-2">A-Z</a>
            <a href="/sortdescend" class="btn btn-secondary bg-1 mx-2">Z-A</a>
        </div>
        <div class="row">
            <div class="row row-cols-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5 my-4">
                @foreach ($sorted_movies as $movie)
                    <div class="col">
                        <a href="/movies/{{ $movie->id }}">
                            <div class="card bg-1">
                                <img class="card-img-top img-poster" class="my-2" src="{{Storage::url('images/movie/thumbnail/'.$movie->image_url)}}" alt="None">
                                <div class="card-body">
                                    <div class="card-title my-2">
                                        {{ \Illuminate\Support\Str::limit($movie->title, 18, $end='...') }}
                                    </div>
                                    <div class="card-text text-color-2 d-flex justify-content-between">
                                        {{ \Illuminate\Support\Str::limit($movie->release_date, 4, $end='') }}

                                        @auth
                                            @if (Auth::user()->role == 'member')
                                                @if (count(Auth::user()->watchlists) == 0)
                                                    <a href="/addWatchlist/{{$movie->id}}">
                                                        <i class="fa-solid fa-plus"></i>
                                                    </a>
                                                @else
                                                    @php
                                                    $exist = False
                                                    @endphp
                                                    @foreach (Auth::user()->watchlists as $w)
                                                        @if ($movie->id == $w->movie_id)
                                                            {{$exist = True}}
                                                            @break
                                                        @else
                                                            {{$exist = False}}
                                                        @endif
                                                    @endforeach
                                                    @if ($exist)
                                                        <i class="fa-solid fa-check text-color-1"></i>
                                                    @else
                                                        <a href="/addWatchlist/{{$movie->id}}">
                                                            <i class="fa-solid fa-plus"></i>
                                                        </a>
                                                    @endif

                                                @endif
                                            @endif
                                        @endif
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