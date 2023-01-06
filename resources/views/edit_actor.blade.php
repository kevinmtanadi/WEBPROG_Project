<!DOCTYPE html>
<html lang="en">
<head>
    @include('layout.head')
    <title>Add Actor</title>
</head>
<body class="d-flex flex-column min-vh-100">
    @include('layout.navbar')

    <div class="container my-5">
        <h3>Add Actor</h3>
        @if ($errors->any())
            <strong>{{ $errors->first() }}</strong>
        @endif
        <form  enctype="multipart/form-data" action="/executeedit" method="POST" class="row w-100">
            @csrf
            <div class="my-1">
                <label for="name" class="mb-1">Name</label>
                <input type="text" class="form-control input-text w-100 text-white" name="name" id="name">
            </div>
            <div class="my-1">
                <label for="gender" class="mb-1">Gender</label>
                <select name="gender" id="gender" class="form-select bg-1 text-white border-0">
                    <option selected disabled='disabled'>-- Open this select menu --</option>
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                </select>
            </div>
            <div class="my-1">
                <label for="biography" class="mb-1">Biography</label>
                <textarea name="biography" class="form-control bg-1 text-white border-0" id="" cols="30" rows="10" style="transition: none"></textarea>
            </div>
            <div class="my-1">
                <label for="dob" class="mb-1">Date of Birth</label>
                <input type="date" class="form-control bg-1 text-white border-0" name="dob" id="dob">
            </div>
            <div class="my-1">
                <label for="pob" class="mb-1">Place of Birth</label>
                <input type="text" class="form-control input-text w-100 text-white" name="pob" id="pob">
            </div>
            <div class="my-1">
                <label for="img_url" class="mb-1">Image Url</label>
                <input type="file" class="form-control input-text w-100 text-white" name="img_url" id="img_url">
            </div>
            <div class="my-1">
                <label for="popularity" class="mb-1">Popularity</label>
                <input type="text" class="form-control input-text w-100 text-white" name="popularity" id="popularity">
            </div>
            <div>
                <input type="submit" value="Create" class="create-btn text-white mt-3 py-1">
            </div>

    </div>

    @include('layout.footer')
</body>
</html>