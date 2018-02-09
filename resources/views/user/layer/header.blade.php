<!-- NAVIGATION BAR -->
<div id="nav_id">
@if(Auth::guest())

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2" style="margin-top: 0px">
        <ul class="nav navbar-nav navbar-right">
            <li><a href="{{ route('login')}}" style="color: gray;font-size: 16px;">Prijavite se</a></li>
            <li><a href="{{ route('register') }}" style="color: gray; font-size: 16px;">Registrujte se</a></li>
        </ul>
    </div><!-- /.navbar-collapse -->

@else

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2" style="margin-top: 0px">
        <ul class="nav navbar-nav navbar-right">
            <li><a href="#" style="font-size: 16px; color: gray;">{{ Auth::user()->name }}</a></li>

            <li>
                <a href="{{ route('logout') }}"
                   onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                    <p style="font-size: 16px; color: gray;">Odjavi se</p>
                </a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                    {{ csrf_field() }}
                </form>
            </li>

        </ul>
    </div><!-- /.navbar-collapse -->


@endif
<nav class="my-navbar navbar navbar-default">

    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" id="id_image" href="/"><img class="logo" src="{{ asset('user/image/logo.png') }}" width="250px"></a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="{{ route('home') }}">Pocetna</a></li>
                <li><a href="{{ route('services') }}">Servisi</a></li>
                <li><a href="{{ route('shop.index') }}">Prodavnica</a></li>
                <li><a href="{{ route('support') }}">Tehnicka podrska</a></li>
                <li><a href="{{ route('contact') }}">Kontakt</a></li>
                <li><a href="{{ route('cart.index') }}" class="glyphicon glyphicon-shopping-cart"><span class="badge">@if(Cart::instance('default')->count() > 0) {{ Cart::instance('default')->count() }} @endif</span></a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<!-- /NAVIGATION BAR -->
</div>