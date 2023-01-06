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
        <form action="/logins" method="POST" class="mx-auto login-form">
            @csrf
            <div class="row mx-auto my-3 bg-1 input-box py-2">
                <label for="email" class="col-4 d-flex align-items-center">
                        Email
                </label>
                <div class="col-8">
                    <input class="input-text w-100 text-white" type="email" name="email" id="email" placeholder="Enter your email", value={{Cookie::get('mycookie') !== null? Cookie::get('mycookie'): ""}}>
                </div>
            </div>
            <div class="row mx-auto my-3 bg-1 input-box py-2">
                <label for="password" class="col-4 d-flex align-items-center">
                        Password
                </label>
                <div class="col-8">
                    <input class="input-text w-100 text-white" type="password" name="password" id="password" placeholder="Enter your password">
                </div>
            </div>
            <div class="d-flex mx-auto my-2">
                <input type="checkbox" name="remember" id="remember" class="me-1" checked={{Cookie::get('mycookie') !== null}}>Remember me
            </div>
            <input type="submit" value="Login &#10140;" class="login-btn py-2 my-2 text-white mx-2">
            <div>
                Don't have an account? <a href="/register" class="text-color-1">Register now!</a>
            </div>

        </form>
    </div>

    @include('layout.footer')
</body>
</html>