<!DOCTYPE html>
<html lang="en">
<head>
    @include('layout.head')
    <title>Home</title>
</head>
<body class="d-flex flex-column min-vh-100">
    @include('layout.navbar')

    <div class="container text-center">
        <h3 class="my-5">
            Hello, Welcome back to MovieList
        </h3>
        @if ($errors->any())
            <strong>{{$errors->first()}}</strong>
         @endif
        <form method="POST" action="/registers" class="mx-auto login-form">
            @csrf
            <div class="row mx-auto my-3 bg-1 input-box py-2">
                <label for="username" class="col-4 d-flex align-items-center">
                        Username
                </label>
                <div class="col-8">
                    <input class="input-text w-100" type="username" name="username" id="username" placeholder="Enter your username">
                </div>
            </div>
            <div class="row mx-auto my-3 bg-1 input-box py-2">
                <label for="email" class="col-4 d-flex align-items-center">
                        Email
                </label>
                <div class="col-8">
                    <input class="input-text w-100" type="email" name="email" id="email" placeholder="Enter your email">
                </div>
            </div>
            <div class="row mx-auto my-3 bg-1 input-box py-2">
                <label for="password" class="col-4 d-flex align-items-center">
                        Password
                </label>
                <div class="col-8">
                    <input class="input-text w-100" type="password" name="password" id="password" placeholder="Enter your password">
                </div>
            </div>
            <div class="row mx-auto my-3 bg-1 input-box py-2">
                <label for="password_confirmation" class="col-4 d-flex align-items-center">
                        Confirm Password
                </label>
                <div class="col-8">
                    <input class="input-text w-100" type="password" name="password_confirmation" id="password_confirmation" placeholder="Enter your confirm password">
                </div>
            </div>
            <input type="submit" value="Register &#10140;" class="login-btn py-2 my-2 text-white">
            <div>
                Already have an account? <a href="/register" class="text-color-1">Login now!</a>
            </div>

        </form>
    </div>

    @include('layout.footer')
</body>
</html>