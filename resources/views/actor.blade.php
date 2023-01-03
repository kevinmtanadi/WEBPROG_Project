
<!DOCTYPE html>
<html lang="en">
<head>
    @include('layout.head')
    <title>Actor</title>
</head>
<body class="d-flex flex-column min-vh-100">
    @include('layout.navbar')

    <div class="container my-2">
        <form action="/actor" class="d-flex justify-content-between">
            <h3>Actors</h3>
            <input class="input-text b-radius px-3" type="text" name="search" id="search" placeholder="Search Actor">
        </form>

        <div class="row row-cols-5 my-4">
            @foreach ($actors as $a)
            <div class="col">
                <div class="card bg-1">
                    <div class="card-body">
                    <img class="w-100" width="200px" height="270px" class="my-2" src="{{Storage::url('images/'.$a->image_url)}}" alt="None">
                        <div class="card-title my-2">
                            {{ $a->name}}
                        </div>
                        <div class="card-text text-color-2">
                            Movies of this actor
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