@extends('user.layer.app')

@section('main-content')

    <!-- CONTACT -->
    <div class="row" style="background-color: #e0e0e0;">
        <div class="col-lg-11 col-lg-offset-1">
            <h2><b>VASI POENI</b></h2>
        </div>
    </div>
    <br>
    <div class="container">
        <div class="col-lg-3 pull-left">
            <h2>Vas profil</h2>
            <ul><br>
                <a href="{{ route('order.index') }}" id="profile"><h4>Narudzbine</h4></a>
                <a href="{{ route('order.profile') }}" id="profile"><h4>Vasi podaci</h4></a>
                <a href="{{ route('order.points') }}" id="profile"><h4>Vasi poeni</h4></a>
            </ul>
        </div>
        <h2>Poeni</h2>
        <h4>Trentni broj poena: {{ $points->points }}</h4>
    </div>

@endsection