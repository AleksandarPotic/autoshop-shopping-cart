@extends('user.layer.app')

@section('main-content')

    <!-- CONTACT -->
    <div class="row" style="background-color: #e0e0e0;">
        <div class="col-lg-11 col-lg-offset-1">
            <h2><b>KORPA</b></h2>
        </div>
    </div>
    <br>
    <div class="container" id="container">
        <div class="row">
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

                @if(Cart::count() > 0)
            <h3>Trenutno proizvoda u korpi: {{ Cart::count() }}</h3>
                @foreach(Cart::content() as $item)
                    <div class="col-lg-12" id="item">
                        <hr>
                        <div class="col-lg-2">
                            <a href="{{ route('shop.show', $item->model->slug) }}" ><img src="{{ asset($item->model->image) }}" width="100px" height="100px"></a>
                        </div>
                        <div class="col-lg-3">
                            <a href="{{ route('shop.show', $item->model->slug) }}" ><h4 style="color: black">{{ $item->name }}</h4></a>
                            <h5 style="color: gray">{{ $item->model->details }}</h5>
                        </div>
                        <div class="col-lg-3">
                            <form action="{{ route('cart.destroy', $item->rowId) }}" method="POST">
                                {{ csrf_field() }}
                                {{ method_field('DELETE') }}

                                <button type="submit" class="btn btn-link"><h5 style="color: black">Ukloni</h5></button>
                            </form>
                            <form action="{{ route('cart.switchSaveForLater', $item->rowId) }}" method="POST">
                                {{ csrf_field() }}

                                <button type="submit" class="btn btn-link"><h5 style="color: black">Sacuvaj za kasnije</h5></button>
                            </form>
                        </div>
                        <div class="col-lg-2">
                            <select class="form-control quantity" data-id="{{ $item->rowId }}">
                                @for($i = 1 ; $i <= 5; $i++)
                                    <option{{ $item->qty == $i ? ' selected' : '' }}>{{ $i }}</option>
                                @endfor
                            </select>
                        </div>
                        <div class="col-lg-2">
                            <h4 style="color: gray">{{ $item->model->presentPrice($item->price) }}</h4>
                            <h4><b>{{ $item->model->presentPrice($item->subtotal) }}</b></h4>
                        </div>
                    </div>
                    @endforeach
        </div>
        <hr>
        <div class="row">
            <div class="col-lg-5 col-lg-offset-1">
                @if(!$percent == 0)
                <h4>Ukupna cena bez PDV-a : ${{ $subtotal }}</h4>
                <h4>PDV({{ $percent }}%) : ${{ $tax }}</h4>
                @endif
                    <h3><b>Ukupna cena : ${{ $total }}</b></h3>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1">
                <a href="{{ route('checkout.index') }}"><button type="button" class="btn btn-success btn-lg btn-block">Prihvati</button></a>
                <br><a href="{{ route('shop.index') }}"><button type="button" class="btn btn-secondary btn-lg btn-block" style="color: black">Nastavi sa kupovinom</button></a>
            </div>
        </div><br>
        @else
            <h3>Nema proizvoda u korpi</h3>
            <a href="{{ route('shop.index') }}"><button class="btn btn-info">Nastavi sa kupovinom</button></a>
        @endif
        <hr>
        @if(Cart::instance('saveForLater')->count() > 0)
            <h3>Proizvodi sacuvani za kasnije: {{ Cart::instance('saveForLater')->count() }}</h3>
            @foreach(Cart::instance('saveForLater')->content() as $item)
                <div class="col-lg-12" id="item">
                    <hr>
                    <div class="col-lg-2">
                        <a href="{{ route('shop.show', $item->model->slug) }}" ><img src="{{ asset($item->model->image) }}" width="100px" height="100px"></a>
                    </div>
                    <div class="col-lg-3">
                        <a href="{{ route('shop.show', $item->model->slug) }}" ><h4 style="color: black">{{ $item->model->name }}</h4></a>
                        <h5 style="color: gray">{{ $item->model->details }}</h5>
                    </div>
                    <div class="col-lg-3">
                        <form action="{{ route('saveForLater.destroy', $item->rowId) }}" method="POST">
                            {{ csrf_field() }}
                            {{ method_field('DELETE') }}

                            <button type="submit" class="btn btn-link"><h5 style="color: black">Ukloni</h5></button>
                        </form>
                        <form action="{{ route('saveForLater.switchToCart', $item->rowId) }}" method="POST">
                            {{ csrf_field() }}

                            <button type="submit" class="btn btn-link"><h5 style="color: black">Vrati u korpu</h5></button>
                        </form>
                    </div>
                    <div class="col-lg-2">
                        <h4><b>{{ $item->model->presentPrice($item->price) }}</b></h4>
                    </div>
                    <hr>
                    <br>
                </div>
            @endforeach
            @else

            <h3>Nema proizvoda u listi sa sacuvanim proizvodima</h3>
        @endif
    </div>

    </div>
    <!-- /CONTACT -->

    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script>

        $(document).ready(function () {
           const classname = document.querySelectorAll(".quantity")

            Array.from(classname).forEach(function (element) {
              element.addEventListener('change',function () {
                  const id = element.getAttribute("data-id")
                  axios.patch(`/cart/${id}` , {
                      quantity: this.value
                  })
                      .then(function (response) {
                          window.location.href = '{{ route('cart.index') }}'
                      })
                      .catch(function (error) {
                          window.location.href = '{{ route('cart.index') }}'
                      });
              })
            })
        });

    </script>

@endsection