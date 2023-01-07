
<!DOCTYPE html>
<html lang="en">
<head>
    @include('layout.head')
    <title>Actor</title>
</head>
<body class="d-flex flex-column min-vh-100">
    @include('layout.navbar')

    <div class="container my-3">
        <form action="/actor" class="d-flex justify-content-between">
            <h3>Actors</h3>
            <div class="d-flex">
                <input class="input-text b-radius px-3" type="text" name="search" id="search" placeholder="Search Actor">
                @auth
                    @if (Auth::user()->role == 'admin')
                        <a href="/addactor" class="btn btn-danger ms-2">Add Actor</a>
                    @endif
                @endif
            </div>

        </form>

        <div class="row row-cols-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5 my-4">
            @foreach ($actors as $a)
            <a href="/actor/{{ $a->id }}">
                <div class="col my-2">
                    <div class="card bg-1">
                        <div class="card-body">
                        <img class="w-100" width="200px" height="270px" class="my-2" src="{{Storage::url('images/'.$a->image_url)}}" alt="None" loading="lazy">
                            <div class="card-title my-2">
                                {{ $a->name}}
                            </div>
                            @if (count($a->movies) > 0)
                            <div class="card-text text-color-2">
                                {{ $a->movies[0]->movie->title}}
                            </div>
                            @endif
                        </div>
                    </div>
                </div>
            </a>

        @endforeach
        </div>

    </div>

    @include('layout.footer')
</body>
</html>