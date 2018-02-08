@extends('user.layer.app')

@section('main-content')

    <!-- SLIDER -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">

            <div class="item active">
                <img src="{{ asset('user/image/slider1.png')}}" alt="Los Angeles" style="width:100%;">
                <div class="carousel-caption">
                    <h1>UCINITE DA VAS AUTOMOBIL TRAJE DUZE</h1>
                    <p>  Besplatno menjanje ulja. Nedelja 15. april
                        samo ako imate sve kupone u nagradnoj igri</p>
                </div>
            </div>

            <div class="item">
                <img src="{{ asset('user/image/slider3.png')}}" alt="Chicago" style="width:100%;">
                <div class="carousel-caption">
                    <h1>EKSPERTNI TEHNICARI, POVOLJNE CENE</h1>
                    <p>Posveceni smo da steknete poverenje u nas svojim strucnim i kvalitetnim radom</p>
                </div>
            </div>

            <div class="item">
                <img src="{{ asset('user/image/slider2.png') }}" alt="New York" style="width:100%;">
                <div class="carousel-caption">
                    <h1>POVOLJNE CENE GUMA KOJE SU POTREBNE ZA VAS AUTOMOBIL</h1>
                    <p>Postoji mogucnost placanja u vise rata i preko administrativne zabrane</p>
                </div>
            </div>

        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!-- /SLIDER -->
    <!-- BODY -->
    <div class="cont1" style="text-align: center;"><br>
        <div class="col-lg-12">
            <font size="5">Ako imate neki problem resite ga jednim klikom</font>
            <a href="TehnickaPodrska.html"><button class="btn btn-primary" style="margin-top: -10px;"> TEHNICKA PODRSKA</button></a>
        </div>
    </div>
    <div class="cont2">
        <div class="col-lg-12" style="text-align: center;">
            <font class="servis" size="6">SERVISI KOJE NUDIMO</font>
        </div>
        <div class="col-lg-12">
            <hr width="20%">
        </div>
        <div class="col-lg-12" style="text-align: center">
            <font face="Arial" size="4" color="#858585">Mi vam mozemo pomoci u svemu, od zamene ulja da zamene motora.<br> Kako domacim
                vozilima tako i strancima. Nudimo i veliki asortiman delova za vase automobile</font>
        </div>
    </div>
    <div class="container">
        <div class="cont3">
            <div class="col-lg-3 col-lg-offset-2">
                <img src="{{ asset('user/image/i1.jpg') }}"><font face="Arial" size="4"><b>AUDIO SERVIS</b></font><br>
                <h4>Ovde pise nesto u najkracim crtama o servisu i usluzi koju nudimo. Ako zelite saznati nesto vise kliknite na dugme ispod.</h4>
                <a href="Servis1.html"><button class="btn btn-primary">JOS O SERVISU</button></a>
            </div>
            <div class="col-lg-3">
                <img src="{{ asset('user/image/i2.jpg') }}"><font face="Arial" size="4"><b>SERVIS KLIME</b></font><br>
                <h4>Ovde pise nesto u najkracim crtama o servisu i usluzi koju nudimo. Ako zelite saznati nesto vise kliknite na dugme ispod.</h4>
                <a href="Servis1.html"><button class="btn btn-primary">JOS O SERVISU</button></a>
            </div>
            <div class="col-lg-3">
                <img src="{{ asset('user/image/i3.jpg') }}"><font face="Arial" size="4"><b>ZAMENA ULJA</b></font><br>
                <h4>Ovde pise nesto u najkracim crtama o servisu i usluzi koju nudimo. Ako zelite saznati nesto vise kliknite na dugme ispod.</h4>
                <a href="Servis1.html"><button class="btn btn-primary">JOS O SERVISU</button></a>
            </div>
        </div><br>
        <div class="cont4">
            <div class="col-lg-3 col-lg-offset-2">
                <img src="{{ asset('user/image/i4.jpg') }}"><font face="Arial" size="4"><b>AUDIO SERVIS</b></font><br>
                <h4>Ovde pise nesto u najkracim crtama o servisu i usluzi koju nudimo. Ako zelite saznati nesto vise kliknite na dugme ispod.</h4>
                <a href="Servis1.html"><button class="btn btn-primary">JOS O SERVISU</button></a>
            </div>
            <div class="col-lg-3">
                <img src="{{ asset('user/image/i5.jpg') }}"><font face="Arial" size="4"><b>SERVIS KLIME</b></font><br>
                <h4>Ovde pise nesto u najkracim crtama o servisu i usluzi koju nudimo. Ako zelite saznati nesto vise kliknite na dugme ispod.</h4>
                <a href="Servis1.html"><button class="btn btn-primary">JOS O SERVISU</button></a>
            </div>
            <div class="col-lg-3">
                <img src="{{ asset('user/image/i6.jpg') }}"><font face="Arial" size="4"><b>ZAMENA ULJA</b></font><br>
                <h4>Ovde pise nesto u najkracim crtama o servisu i usluzi koju nudimo. Ako zelite saznati nesto vise kliknite na dugme ispod.</h4>
                <a href="Servis1.html"><button class="btn btn-primary">JOS O SERVISU</button></a>
            </div>
        </div>
        <br>
        <div class="cont3">
            <div class="col-lg-12" style="text-align: center;">
                <font class="servis" size="6">PROIZVODI:</font>
            </div>
            <div class="col-lg-12">
                <hr width="20%">
            </div>
        </div>
        <div class="container">
            <div class="col-lg-8 col-lg-offset-2">
                @foreach($products as $product)
                    <div class="col-lg-3" style="text-align: center;">
                        <a href="{{ route('shop.show', $product->slug) }}">
                            <img src="{{ asset($product->image) }}" width="150px" height="150px">
                        </a>
                        <font face="Arial" size="4"><b><br>{{ $product->name }}</b></font>
                        <br><h4>{{ $product->presentPrice($product->price) }}</h4>
                    </div>
                @endforeach
                <a href="{{ route('shop.index') }}"><button class="btn btn-default btn-block">Jos proizvoda</button></a>
            </div>
        </div>
    </div><br>
    <!-- /BODY -->

    @endsection