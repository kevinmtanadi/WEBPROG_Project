<!DOCTYPE html>
<html lang="en">
<head>
    @include('layout.head')
    <title>Actor</title>
</head>
<body class="d-flex flex-column min-vh-100">
    @include('layout.navbar')

    <div class="container my-3">
        <div class="row">
            <div class="col-3">
                <div class="position-relative">
                    <img class="w-100" class="my-2" src="{{Storage::url('images/'.$actor->image_url)}}" alt="None">
                    <a class="flying-btn-1" href="/editactor/{{ $actor->id }}"><i class="fa-regular fa-pen-to-square fs-6 my-auto mx-2"></i></a>
                    <a class="flying-btn-2" href="/deleteactor/{{ $actor->id }}"><i class="fa-solid fa-trash fs-6 my-auto mx-2"></i></a>
                </div>
                <div class="mt-2">
                    <h4>Personal Info</h4>
                    <div class="my-2">
                        <p>Popularity</p>
                        <p class="text-color-2">{{ $actor->popularity }}</p>
                    </div>
                    <div class="my-2">
                        <p>Gender</p>
                        <p class="text-color-2">{{ $actor->gender }}</p>
                    </div>
                    <div class="my-2">
                        <p>Birthday</p>
                        <p class="text-color-2">{{ $actor->dob }}</p>
                    </div>
                    <div class="my-2">
                        <p>Place of Birth</p>
                        <p class="text-color-2">{{ $actor->pob }}</p>
                    </div>
                </div>
            </div>
            <div class="col-9">
                <h2>{{ $actor->name }}</h2>
                <h4>Biography</h4>
                <p>{{ $actor->biography }}</p>
                <h4>Known For</h4>
                    <div class="row row-cols-4">
                        @foreach ($actor->movies as $movie)
                            <div class="col my-2">
                                <a href="/movies/{{ $movie->movie->id }}">
                                    <div class="card bg-1 p-3">
                                        <img class="card-img-top img-poster img-fluid" class="my-2" src="{{Storage::url('images/movie/thumbnail/'.$movie->movie->image_url)}}" alt="None">
                                        <div class="card-title my-2">
                                            {{ $movie->movie->title }}
                                        </div>
                                    </div>
                                </a>
                            </div>
                        @endforeach
                    </div>
                </div>

            </div>
        </div>
    </div>

    @include('layout.footer')
</body>
</html>