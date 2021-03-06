@extends('user.layer.app')

@section('main-content')

    <!-- CONTACT -->
    <div class="row" style="background-color: #e0e0e0;">
        <div class="col-lg-11 col-lg-offset-1">
            <h2><b>PROFIL</b></h2>
        </div>
    </div>
    <br>
    <div class="container">
        <div class="col-lg-3 pull-left">
            <h2>Vas profil</h2>
            <ul><br>
                <a href="{{ route('order.index') }}" id="profile"><h4>Narudzbine</h4></a>
                <a href="{{ route('order.profile') }}" id="profile"><h4>Vasi podaci</h4></a>
            </ul>
        </div>
        <div class="col-lg-9 pull-right">
            <h2>Vasi podaci</h2>
            <form class="form-horizontal" method="POST" action="{{ route('order.changeUser') }}">
                {{ csrf_field() }}

                <input type="hidden" name="id" value="{{ Auth::user()->id }}">

                <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                    <label for="name" class="col-md-4 control-label">Ime i Prezime</label>

                    <div class="col-md-6">
                        <input id="name" type="text" class="form-control" name="name" value="{{ Auth::user()->name }}" required>

                        @if ($errors->has('name'))
                            <span class="help-block">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                        @endif
                    </div>
                </div>

                <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                    <label for="email" class="col-md-4 control-label">E-Mail Adresa</label>

                    <div class="col-md-6">
                        <input id="email" type="email" class="form-control" name="email" value="{{ Auth::user()->email }}" disabled>

                        @if ($errors->has('email'))
                            <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                        @endif
                    </div>
                </div>

                <div class="form-group{{ $errors->has('mobile') ? ' has-error' : '' }}">
                    <label for="mobile" class="col-md-4 control-label">Broj telefona</label>

                    <div class="col-md-6">
                        <input id="mobile" type="text" class="form-control" name="mobile" value="{{ Auth::user()->mobile }}" required>

                        @if ($errors->has('mobile'))
                            <span class="help-block">
                                        <strong>{{ $errors->first('mobile') }}</strong>
                                    </span>
                        @endif
                    </div>
                </div>

                <div class="form-group{{ $errors->has('street') ? ' has-error' : '' }}">
                    <label for="street" class="col-md-4 control-label">Ulica i broj</label>

                    <div class="col-md-6">
                        <input id="street" type="text" class="form-control" name="street" value="{{ Auth::user()->street }}" required>

                        @if ($errors->has('street'))
                            <span class="help-block">
                                        <strong>{{ $errors->first('street') }}</strong>
                                    </span>
                        @endif
                    </div>
                </div>

                <div class="form-group{{ $errors->has('city') ? ' has-error' : '' }}">
                    <label for="city" class="col-md-4 control-label">Grad</label>

                    <div class="col-md-6">
                        <input id="city" type="text" class="form-control" name="city" value="{{ Auth::user()->city }}" required>

                        @if ($errors->has('city'))
                            <span class="help-block">
                                        <strong>{{ $errors->first('city') }}</strong>
                                    </span>
                        @endif
                    </div>
                </div>

                <div class="form-group{{ $errors->has('postalCode') ? ' has-error' : '' }}">
                    <label for="postalCode" class="col-md-4 control-label">Postanski broj</label>

                    <div class="col-md-6">
                        <input id="postalCode" type="text" class="form-control" name="postalCode" value="{{ Auth::user()->postalCode }}" required>

                        @if ($errors->has('postalCode'))
                            <span class="help-block">
                                        <strong>{{ $errors->first('postalCode') }}</strong>
                                    </span>
                        @endif
                    </div>
                </div>

                <div class="form-group{{ $errors->has('birthday') ? ' has-error' : '' }}">
                    <label for="birthday" class="col-md-4 control-label">Datum rodjenja</label>

                    <div class="col-md-6">
                        <input id="birthday" type="date" class="form-control" name="birthday" value="{{ Auth::user()->birthday }}" required>

                        @if ($errors->has('birthday'))
                            <span class="help-block">
                                        <strong>{{ $errors->first('birthday') }}</strong>
                                    </span>
                        @endif
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-lg-6 col-lg-offset-4 pull-left"><button type="submit" id="register_button" class="btn btn-primary btn-block">Izmeni podatke</button></div>
                </div>
            </form>
        </div>
    </div>

@endsection