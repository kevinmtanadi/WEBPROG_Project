<!DOCTYPE html>
<html lang="en">
<head>
    @include('layout.head')
    <title>Profile</title>
</head>
<body class="d-flex flex-column min-vh-100">
    @include('layout.navbar')

    <div class="container my-4">
        <div class="row">
            <div class="col-3 text-center align-self-center">
                <h3 class="my-4">My Profile</h3>
                <button type="button" class="btn text-white border-0" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    @if (Auth::user()->image_url == '')
                        <img class="profile-big" src="{{Storage::url('public/images/profile.webp')}}" alt="">
                    @else
                        <img class="profile-big" src="{{Storage::url('public/images/'.Auth::user()->image_url)}}" alt="Profile Pic">
                    @endif
                </button>
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content bg-1">
                            <form enctype="multipart/form-data" action="/changeProfilePic" method="POST" >
                                @csrf
                                <div class="modal-header border-0">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Update Image</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <input type="file" class="form-control input-text text-white bg-3" name="image_url" id="image_url">
                                </div>
                                <div class="modal-footer border-0">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    <button type="submit" class="btn btn-danger">Save changes</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <h4 class="my-4">{{Auth::user()->username}}</h4>
                <h5 class="my-4">{{Auth::user()->email}}</h5>
            </div>
            <div class="col-9">
                <h3>Update Profile</h3>
                <form method="POST" action="/updateUser" class="mx-auto">
                    @csrf
                    <div class="row mx-auto my-3 bg-1 input-box py-2">
                        <label for="username" class="col-4 d-flex align-items-center">
                                Username
                        </label>
                        <div class="col-8">
                            <input class="input-text w-100" type="username" name="username" id="username" placeholder="Enter your username" value="{{Auth::user()->username}}">
                        </div>
                    </div>
                    <div class="row mx-auto my-3 bg-1 input-box py-2">
                        <label for="email" class="col-4 d-flex align-items-center">
                                Email
                        </label>
                        <div class="col-8">
                            <input class="input-text w-100" type="email" name="email" id="email" placeholder="Enter your email" value="{{Auth::user()->email}}">
                        </div>
                    </div>
                    <div class="row mx-auto my-3 bg-1 input-box py-2">
                        <label for="dob" class="col-4 d-flex align-items-center">
                                Date of Birth
                        </label>
                        <div class="col-8">
                            <input type="date" class="form-control bg-1 text-white border-0" name="dob" id="dob" value="{{Auth::user()->dob}}">
                        </div>
                    </div>
                    <div class="row mx-auto my-3 bg-1 input-box py-2">
                        <label for="phone" class="col-4 d-flex align-items-center">
                                Phone
                        </label>
                        <div class="col-8">
                            <input class="input-text w-100" type="text" name="phone" id="phone" value="{{Auth::user()->phone}}">
                        </div>
                    </div>
                    <div>
                        <input type="submit" value="Save Changes" class="create-btn text-white mt-3 py-1 w-100">
                    </div>
                </form>
            </div>
        </div>

    </div>

    @include('layout.footer')
</body>
</html>