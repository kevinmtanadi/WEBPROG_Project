<!DOCTYPE html>
<html lang="en">
<head>
    @include('layout.head')
    <title>Add Movie</title>
</head>
<body class="d-flex flex-column min-vh-100">
    @include('layout.navbar')

    <div class="container my-5">
        <h3>Add Movie</h3>
        @if ($errors->any())
            <strong>{{ $errors->first() }}</strong>
        @endif
        <form  enctype="multipart/form-data" action="/insertactor" method="POST" class="row w-100">
            @csrf
            <div class="my-1">
                <label for="title" class="mb-1">Title</label>
                <input type="text" class="form-control input-text w-100 text-white" name="title" id="title">
            </div>
            <div class="my-1">
                <label for="biography" class="mb-1">Description</label>
                <textarea name="biography" class="form-control bg-1 text-white border-0" id="" cols="30" rows="10" style="transition: none"></textarea>
            </div>
            <div class="my-1">
                <label for="genre" class="mb-1">Genre</label>
                <input type="text" class="form-control input-text w-100 text-white" name="genre" id="genre">
            </div>
            <div class="my-1">
                <p class="mb-3">Actors</p>
                <div class="wrapper mx-3" id="actors-list">
                    <div id="actors-wrapper">
                        <div class="row d-flex">
                            <div class="col">
                                <label for="actor-1" class="mb-1">Actor</label>
                                <select name="actor-1" id="actor-1" class="form-select bg-1 text-white border-0">
                                    <option selected disabled='disabled'>-- Open this select menu --</option>
                                    @foreach ($actors as $a)
                                    <option value="{{$a->id}}">{{$a->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col">
                                <label for="c-name-1" class="mb-1">Character Name</label>
                                <input type="text" class="form-control input-text w-100 text-white"  name="c-name-1" id="c-name-1">
                            </div>
                        </div>
                    </div>
                    <div class="text-end mt-3">
                        <input type="button" value="Add more" class="btn btn-primary" onclick="addActor();">
                    </div>
                </div>

            </div>
            <div class="my-1">
                <label for="director" class="mb-1">Director</label>
                <input type="text" class="form-control input-text w-100 text-white" name="director" id="director">
            </div>
            <div class="my-1">
                <label for="release_date" class="mb-1">Release Date</label>
                <input type="date" class="form-control bg-1 text-white border-0" name="release_date" id="release_date">
            </div>
            <div class="my-1">
                <label for="img_url" class="mb-1">Image Url</label>
                <input type="file" class="form-control input-text w-100 text-white" name="img_url" id="img_url">
            </div>
            <div class="my-1">
                <label for="bg_url" class="mb-1">Background Url</label>
                <input type="file" class="form-control input-text w-100 text-white" name="bg_url" id="bg_url">
            </div>
            <div>
                <input type="submit" value="Create" class="create-btn text-white mt-3 py-1 w-100">
            </div>

    </div>

    @include('layout.footer')

    <script src="{{ asset('js/script.js')}}"></script>
</body>
</html>