@extends('user.layer.app')

@section('main-content')

    <!-- CONTACT -->
    <div class="row" style="background-color: #e0e0e0;">
        <div class="col-lg-11 col-lg-offset-1">
            <h2><b>PROVERA</b></h2>
        </div>
    </div>
    <br>
    <div class="container">
        <div class="row">
            <div class="col-lg-6 pull-right">
                <h3>Vasa korpa:</h3>
                @foreach(Cart::content() as $item)
                    <div class="col-lg-12" id="item">
                        <hr>
                        <div class="col-lg-2">
                            <img src="{{ asset($item->model->image) }}" width="80px" height="80px">
                        </div>
                        <div class="col-lg-3">
                            <h4>{{ $item->model->name }}</h4>
                            <h5 style="color: gray">{{ $item->model->details }}</h5>
                        </div>
                        <div class="col-lg-2">
                            <div class="form-group row">
                                <input class="form-control" type="text" value="{{ $item->qty }}" disabled>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <h4><b>{{ $item->model->presentPrice($item->price) }}</b></h4>
                        </div>
                    </div>
                @endforeach
                <div class="row">
                    <di class="col-lg-10 col-lg-offset-2 pull-right">
                        <hr>
                        <h4>Ukupna cena (bez PDV-a) : ${{Cart::subtotal() }}</h4>
                        <h4>PDV({{ $percent }}%) : ${{ $tax }}</h4>
                        <hr>
                        @if(session('coupon'))
                            <h4>Popust(*{{ session()->get('coupon')['name'] }}) : -${{ number_format(session()->get('coupon')['discount'],2,'.',',') }}</h4>
                        <form action="{{ route('coupon.destroy') }}" method="POST" style="display: inline">
                            {{ csrf_field() }}
                            {{ method_field('DELETE') }}
                            <button type="submit" class="btn btn-link" style="color: black">Ukloni kupon</button>
                        </form>
                            <hr>
                        @endif

                        <h3><b>Ukupna cena : ${{ $newTotal }}</b></h3>
                        <hr>
                    </di>
                    @if(!session('coupon'))
                    <div class="col-lg-6 col-lg-offset-4">
                        <h4>Imas kod za popust?</h4>
                        <form action="{{ route('coupon.store')}}" method="POST">
                            {{ csrf_field() }}
                            <div class="form-group">
                                <input type="text" id="discountCode" name="discountCode" class="form-control" placeholder="Kod..." required>
                            </div>
                            <button type="submit" class="btn btn-success btn-block">Primeni kod</button>
                        </form>
                    </div>
                        @endif
                </div>
            </div>
            <div class="col-lg-6 pull-left">
                <div class="col-lg-12">
                    @if (session()->has('success_message'))
                        <div class="alert alert-success">
                            {{ session()->get('success_message') }}
                        </div>
                    @endif
                    @if(count($errors) > 0)
                        <div class="alert alert-danger">
                            <ul>
                                @foreach($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    <form action="{{ route('homeDelivery.save') }}" id="payment-form" method="POST">
                        {{ csrf_field() }}
                        <hr>
                        <div class="form-group row">
                            <label for="example-text-input" class="col-2 col-form-label">Ime i prezime</label>
                            <div class="col-10">
                                <input class="form-control" type="text" id="name" name="name" placeholder="Ime i prezime" value="@if(!Auth::guest()){{ Auth::user()->name }}@endif">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="example-text-input" class="col-2 col-form-label">Email adresa</label>
                            <div class="col-10">
                                <input class="form-control" type="email" id="email" name="email" placeholder="Email adresa" value="@if(!Auth::guest()){{ Auth::user()->email }}@endif">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="example-tel-input" class="col-2 col-form-label">Telefon</label>
                            <div class="col-10">
                                <input class="form-control" type="text" id="mobile" name="mobile" placeholder="Telefon" value="@if(!Auth::guest()){{ Auth::user()->mobile }}@endif">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="example-tel-input" class="col-2 col-form-label">Grad</label>
                            <div class="col-10">
                                <input class="form-control" type="text" id="city" name="city" placeholder="Grad" value="@if(!Auth::guest()){{ Auth::user()->city }}@endif">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="example-tel-input" class="col-2 col-form-label">Ulica i broj</label>
                            <div class="col-10">
                                <input class="form-control" type="text" id="street" name="street" placeholder="Ulica i broj" value="@if(!Auth::guest()){{ Auth::user()->street }}@endif">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="example-tel-input" class="col-2 col-form-label">Postanski broj</label>
                            <div class="col-10">
                                <input class="form-control" type="text" id="postalCode" name="postalCode" placeholder="Postanski broj" value="@if(!Auth::guest()){{ Auth::user()->postalCode }}@endif">
                            </div>
                        </div>
                        <input class="hidden" name="totalPrice" value="{{ $newTotal }}">
                        @if(!Auth::guest())
                            <div class="alert alert-info">
                                <strong>Obavestenje!</strong> Ako imate druge podatke unesite ih.
                            </div>
                        @endif
                        <h2><b>Dostava kurirskom sluzbom</b></h2>
                        <button type="submit" class="btn btn-primary btn-block">PRIHVATAM</button>
                        <h2><b>Plati pomocu PayPal-a</b></h2>
                        @include('user.layer.paypal')
                    </form>
                    
                        
                </div>
            </div>
        </div>

        <hr>
    </div>
    <!-- /CONTACT -->

@endsection
