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
        <div class="d-flex">
            <i class="fa fa-filter me-3 d-flex align-items-center" aria-hidden="true"></i>
            <div class="dropdown">
                <button class="btn dropdown-toggle bg-3 text-white" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                  All
                </button>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="/watchlist/status/all">All</a></li>
                    <li><a class="dropdown-item" href="/watchlist/status/planning">Planned</a></li>
                    <li><a class="dropdown-item" href="/watchlist/status/watching">Watching</a></li>
                    <li><a class="dropdown-item" href="/watchlist/status/finished">Finished</a></li>
                </ul>
              </div>
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
                            <th class="col text-white align-middle">{{ ucfirst($w->status) }}</th>
                            <th class="col text-white align-middle"><button type="button" class="btn text-white border-0" data-bs-toggle="modal" data-bs-target="#exampleModal{{$w->id}}"><i class="fa-solid fa-ellipsis"></i></button></th>
                            <div class="modal fade" id="exampleModal{{$w->id}}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content bg-1">
                                        <form action="/changestatus/{{ $w->id }}">
                                            <div class="modal-header border-0">
                                                <h1 class="modal-title fs-5" id="exampleModalLabel">Change Status</h1>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <select name="status" id="status" class="form-select bg-3 text-white border-0">
                                                    <option value="planning" {{ strcasecmp($w->status, "planning") == 0 ? 'selected' : '' }}>Planning</option>
                                                    <option value="watching" {{ strcasecmp($w->status, "watching") == 0 ? 'selected' : '' }}>Watching</option>
                                                    <option value="finished" {{ strcasecmp($w->status, "finished") == 0 ? 'selected' : '' }}>Finished</option>
                                                    <option value="remove">Remove</option>
                                                </select>
                                            </div>
                                            <div class="modal-footer border-0">
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-danger">Save changes</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </tr>
                    @endforeach
                </tbody>
            </table>
            <div>
                <div>
                    Showing {{$watchlists->firstItem()}} to {{$watchlists->lastItem()}} of {{ $watchlists->total() }} results
                </div>
                <div>
                    <a href="{{$watchlists->previousPageUrl()}}">&laquo;</a>
                    @for ($i = 1; $i <= $watchlists->lastPage(); $i++)
                        @if($i == $watchlists->currentPage())
                            <b><a href="{{$watchlists->url($i)}}">{{$i}}</a></b>
                        @else
                            <a href="{{$watchlists->url($i)}}">{{$i}}</a>
                        @endif
                    @endfor
                    <a href="{{$watchlists->nextPageUrl()}}">&raquo;</a>
                </div>

            </div>
        </div>

    </div>
    @include('layout.footer')
</body>
</html>