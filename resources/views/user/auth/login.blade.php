@extends('user.layer.app')

@section('main-content')
    <!-- SERVICES -->
    <div class="row" style="background-color: #e0e0e0;">
        <div class="col-lg-11 col-lg-offset-1">
            <h2><b>PRIJAVITE SE</b></h2>
        </div>
    </div>
    <br><br><br>
    <div class="container">
        <div class="col-md-8 col-md-offset-2">

                <div class="panel-body">
                    <form class="form-horizontal" method="POST" action="{{ route('login') }}">
                        {{ csrf_field() }}

                        <div class="col-md-10 col-md-offset-2">
                            @if(session('status'))
                                <p class="alert alert-success">{{ session('status') }}</p>
                            @endif
                            @if(session('done'))
                                <p class="alert alert-success">{{ session('done') }}</p>
                            @endif
                        </div>

                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <label for="email" class="col-md-4 control-label">E-Mail Adresa</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required autofocus>

                                @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                            <label for="password" class="col-md-4 control-label">Lozinka</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control" name="password" required>

                                @if ($errors->has('password'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> Zapamti me
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-8 col-md-offset-4">
                                <a class="btn btn-link" href="{{ route('password.request') }}">
                                    Zaboravili ste lozinku?
                                </a>
                            </div>

                            <div class="col-lg-6 pull-right"><button type="submit" class="btn btn-primary btn-block" style="margin-bottom: 5px;">Prijavite se</button></div>
                            <div class="col-lg-12">
                                <a href="{{ route('register') }}"><button type="button" class="btn btn-default btn-block">Registrujte se</button>
                                </a>
                            </div>
                        </div>
                    </form>
                </div>
        </div>
    </div>
@endsection
