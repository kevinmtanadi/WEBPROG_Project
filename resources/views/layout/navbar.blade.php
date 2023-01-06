<section>
        <nav class="navbar navbar-expand fixed-top justify-content-around py-3 bg-1">
            <div class="text-white">
                MovieList
            </div>
            <ul class="navbar-nav">
                <li class="nav-item mx-2 my-auto">
                    <a href="/" class="text-white">Home</a>
                </li>
                <li class="nav-item mx-2 my-auto">
                    <a href="/movies" class="text-white">Movies</a>
                </li>
                <li class="nav-item mx-2 my-auto">
                    <a href="/actor" class="text-white">Actors</a>
                </li>
                @auth
                <li class="nav-item mx-2 my-auto">
                    <a href="/watchlist" class="text-white">My Watchlist</a>
                </li>
                <li class="nav-item mx-2 my-auto">
                    <div class="dropdown">
                        <button class="profile d-block m-auto" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                            @if (Auth::user()->image_url == '')
                                <img class="profile" src="{{Storage::url('public/images/profile.webp')}}" alt="">
                            @else
                                <img class="profile" src="{{Storage::url('public/images/'.Auth::user()->image_url)}}" alt="Profile Pic">
                            @endif
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end">
                          <li><a class="dropdown-item" href="/profile">Profile</a></li>
                          <li><hr class="dropdown-divider"></li>
                          <li><a class="dropdown-item" href="/logout">Logout</a></li>
                        </ul>
                      </div>
                </li>
                @else
                <li class="nav-item mx-2 my-auto">
                    <a href="/register" class="btn btn-primary">Register</a>
                </li>
                <li class="nav-item mx-2 my-auto">
                    <a href="/login" class="btn btn-outline-primary">Login</a>
                </li>
                @endif
            </ul>
        </nav>
</section>