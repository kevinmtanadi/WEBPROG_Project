<!DOCTYPE html>
<html lang="en">
<head>
    @include('layout.head')
    <title>Watchlist</title>
</head>
<body class="d-flex flex-column min-vh-100">
    @include('layout.navbar')

    <div class="container">
        <form action="/watchlist" class="">
            <h3>My Watchlist</h3>
            <div class="row mx-auto my-3 bg-2 input-box py-1">
                <input class="border-0 col-11 bg-none text-color-3" type="text" name="search" id="search" placeholder="Search your watchlist">
                <button type="submit" class="col-1 bg-none border-0 text-color-3 px-0">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </button>
            </div>
        </form>
        <div class="">
            <i class="fa fa-filter" aria-hidden="true"></i>
            <select name="filter" id="filter" class="bg-none border-0 text-color-3 ms-3">
                <option value="all">All</option>
                <option value="planned">Planned</option>
                <option value="watching">Watching</option>
                <option value="finished">Finished</option>
            </select>
        </div>
        <div>
            <table class="table">
                <thead>
                    <tr>
                        <th class="col text-white">Poster</th>
                        <th class="col text-white">Title</th>
                        <th class="col text-white">Status</th>
                        <th class="col text-white">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($watchlists as $w)
                        <tr>
                            <th class="col text-white"><img class="img-fluid" width="100px"  src="{{Storage::url('images/movie/thumbnail/'.$w->movie->image_url)}}" alt="none"></th>
                            <th class="col text-white align-middle">{{ $w->movie->title }}</th>
                            <th class="col text-white align-middle">{{ $w->status }}</th>
                            <th class="col text-white align-middle"><i class="fa-solid fa-ellipsis"></i></th>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

    </div>

    @include('layout.footer')
</body>
</html>