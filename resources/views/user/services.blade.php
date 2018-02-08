@extends('user.layer.app')

@section('main-content')

    <!-- SERVICES -->
    <div class="row" style="background-color: #e0e0e0;">
        <div class="col-lg-11 col-lg-offset-1">
            <h2><b>SERVISI</b></h2>
        </div>
    </div>
    <br><br><br>
    <div class="container">
        <div class="row">
            <div class="col-lg-4"  style="text-align: center;">
                <a href="Servis1.html"><img src="{{ asset('user/image/s1.jpg') }}"></a>
                <font face="Arial" size="5"><b>DIJAGNOSTIKA MOTORA</b></font>
            </div>
            <div class="col-lg-4"  style="text-align: center;">
                <a href="Servis1.html"><img src="{{ asset('user/image/s2.jpg') }}"></a>
                <font face="Arial" size="5"><b>ZAMENA ULJA I FILTERA</b></font>
            </div>
            <div class="col-lg-4"  style="text-align: center;">
                <a href="Servis1.html"><img src="{{ asset('user/image/s3.jpg') }}"></a>
                <font face="Arial" size="5"><b>SERVIS KAISA I CREVA</b></font>
            </div><br>
            <div class="col-lg-4"  style="text-align: center;">
                <a href="Servis1.html"><img src="{{ asset('user/image/s4.jpg') }}"></a>
                <font face="Arial" size="5"><b>KLIMATIZACIJA</b></font>
            </div>
            <div class="col-lg-4"  style="text-align: center;">
                <a href="Servis1.html"><img src="{{ asset('user/image/s5.jpg') }}"></a>
                <font face="Arial" size="5"><b>SERVIS KOCNICA</b></font>
            </div>
            <div class="col-lg-4"  style="text-align: center;">
                <a href="Servis1.html"><img src="{{ asset('user/image/s6.jpg') }}"></a>
                <font face="Arial" size="5"><b>SERVIS GUMA I FELNI</b></font>
            </div>
        </div>
    </div>
    <!-- /SERVICES -->

    @endsection