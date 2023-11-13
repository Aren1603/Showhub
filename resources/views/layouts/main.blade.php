<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Movie site</title>
    <link rel="stylesheet" href="{{asset('public/css/owl.carousel.min.css')}}">
    <link rel="stylesheet" href="{{asset('public/css/owl.theme.default.min.css')}}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('public/css/style.css')}}">
    <link rel="stylesheet" href="{{asset('public/dist/css/adminlte.min.css')}}">
    <script src="https://kit.fontawesome.com/1f21eb1afe.js" crossorigin="anonymous"></script>
</head>
<body>
<div class="menu">
    <div class="menu1">
        <div class="menlogo">
            <a href="{{route('main.index')}}"><h1>ShowHub</h1></a>
        </div>
    </div>
    <div class="mentext">
        <a href="{{route('films.index')}}">Movies</a>
        <a href="">Series</a>
        <a href="">Contact</a>
        <a href="">About Us</a>
        <div class="mediamen">
            <div class="mediamen1">
                <h4>menu <i class="fa-solid fa-chevron-down"></i></h4>
            </div>
            <div class="mediamen2">
                <a href="{{route('films.index')}}">Movies</a>
                <a href="">Series</a>
                <a href="">Contact</a>
                <a href="">About Us</a>
            </div>
        </div>
    </div>
    <div class="mensign">
        @guest
            @if (Route::has('login'))
                <a class="menbtn1a" href="{{ route('login') }}">
                    <button class="menbtn1">Log in</button>
                </a>
            @endif
            @if (Route::has('register'))
                <a class="menbtn1a" href="{{ route('register') }}">
                    <button class="menbtn1">Register</button>
                </a>
            @endif
        @else
            <a class="d-flex justify-content-sm-between align-items-center" href="{{route('personal.main.index')}}">
                <div class="accaunt align-items-center">

                    <div class="acimg">
                        <img src="{{asset('public/img/userimg.png')}}" alt="">
                    </div>

                    <div class="acname mt-1">
                        <h3>{{ Auth::user()->name }}</h3>
                    </div>
                    <div class="acexit">
                        <a class="dropdown-item" href="{{ route('logout') }}"
                           onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                            {{ __('Logout') }}
                        </a>

                        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                            @csrf
                        </form>
                    </div>
                </div>
            </a>
            @can('view', auth()->user())
                <a href="{{route('admin.main.index')}}">
                    <button class="menbtn2">Admin</button>
                </a>
            @endcan
        @endguest

    </div>
</div>
@yield('content')
<footer>
    <div class="footer-cont">
        <div class="footer-block">
            <div class="footer-line">
                <h4>
                    <i class="fa-solid fa-link"></i>
                    social media linkss
                </h4>
            </div>
            <div class="footer-block-div">
                <div class="footer-line-a">
                    <a href="">
                        <i class="fa-brands fa-github"></i>
                    </a>
                    <a href="">
                        nourddine benyahya
                    </a>
                </div>

                <div class="footer-line-a">
                    <a href="">
                        <i class="fa-brands fa-linkedin-in"></i>
                    </a>
                    <a href="">
                        nourddine benyahya
                    </a>
                </div>

                <div class="footer-line-a">
                    <a href="">
                        <i class="fa-brands fa-twitter"></i>
                    </a>
                    <a href="">
                        EedinNour
                    </a>
                </div>

                <div class="footer-line-a">
                    <a href="">
                        <i class="fa-solid fa-phone-volume"></i>
                    </a>
                    <a href="">
                        +212607-081298
                    </a>
                </div>

                <div class="footer-line-a">
                    <a href="">
                        <i class="fa-brands fa-facebook-f"></i>
                    </a>
                    <a href="">
                        nourddine ben
                    </a>
                </div>

            </div>
        </div>


        <div class="footer-block-mid">
            <div class="footer-line">
                <h4>
                    <i class="fa-solid fa-link"></i>
                    sponsors
                </h4>
            </div>
            <div class="footer-block-midle">
                <div class="footer-line-a">
                    <a href="">
                        Cisco - Amazon - Google -Azure - LinkedIn
                    </a>
                </div>

                <div class="footer-line-a">
                    <a href="">
                        IBM -Facebook -Tesla - Appel -Microsoft
                    </a>
                </div>
                <div class="footer-line-a">
                    <a href="">
                        Ofppt - 1337
                    </a>
                </div>
            </div>
        </div>


        <div class="footer-block-right">
            <div class="footer-line">
                <h4>
                    <i class="fa-solid fa-link"></i>
                    company
                </h4>
            </div>
            <div class="footer-block-rigt">
                <div class="footer-line-a">
                    <a href="">Register</a>
                    <a href="">Login</a>
                </div>

                <div class="footer-line-a">
                    <a href="">Wishlist</a>
                    <a href="">Our Products</a>
                </div>
                <div class="footer-search">
                    <input type="text" placeholder="Search">
                </div>
            </div>
        </div>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script>
    $(document).ready(function () {
        $('#live_search').on('keyup', function () {
            var query = $(this).val();
            $.ajax({
                url: 'search',
                type: 'GET',
                data: {'search': query},
                success: function (data) {
                    $(".cat1").html(data);
                }
            })
        })
    })
</script>
<script src="{{asset('public/js/script.js')}}"></script>
<script src="{{asset('public/js/owl.carousel.min.js')}}"></script>
@yield('custom_js')
</body>
</html>
