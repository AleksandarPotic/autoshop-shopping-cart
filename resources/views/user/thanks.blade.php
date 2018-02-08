@extends('user.layer.app')

@section('main-content')

    <div class="row" style="background-color: #e0e0e0;">
        <div class="col-lg-11 col-lg-offset-1">
            <h2><b>VERIFIKUJ EMAIL</b></h2>
        </div>
    </div>
    <br>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2" style="text-align: center; margin-top: 100px; margin-bottom: 100px;">
            <h2>Hvala na kupovini!<br>
                <a href="{{ route('home') }}"><button type="button" class="btn btn-primary btn-lg btn-block">Pocetna strana</button></a>
            </div>

        </div>
    </div>

@endsection