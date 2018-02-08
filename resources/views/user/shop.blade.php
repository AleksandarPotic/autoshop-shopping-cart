@extends('user.layer.app')

@section('main-content')

    <!-- BODY -->
    <div class="row" style="background-color: #e0e0e0;">
        <div class="col-lg-11 col-lg-offset-1">
            <h2><b>DELOVI AUTOMOBILA</b></h2>
        </div>
    </div>
    <br><br>
    <div class="container">
        <div class="col-lg-3">
            <h3 style="text-align: center; color: dimgray;"><b>Kategorije</b></h3><br>
            @foreach($categories as $category)
                <a href="{{ route('shop.index', ['category='.$category->slug]) }}"><h4 style="color: black; text-align: center; cursor: pointer;">{{ $category->name }}</h4></a>
                <hr>
            @endforeach
            <h3 style="text-align: center; color: dimgray"><b>Cena</b></h3><br>
            <form>
                <div class="slidecontainer">
                    {{ csrf_field() }}
                <input type="range" min="0" max="1000" step="20" value="1000" class="slider" id="min_price" name="min_price">
                    <h4 style="color: black; text-align: center;">Iznos: $0.00 - $<span id="current_price">1000</span>.00</h4>
             </div>
            </form>
            <br>
        </div>
        <div class="col-lg-9">
            <hr>
            <h3 style="color: gray">
                <div class="col-lg-4">
                    <b>{{ $categoryName }}</b>
                </div>
                <div class="col-lg-4 col-lg-offset-4">
                    <input type="text" name="searchItem1" id="searchItem1" placeholder="Search..." class="form-control">
                </div>
            </h3>
                <div id="ppp">
                    <hr>
                    <ul id="panel">
                    @forelse($products as $product)
                            <li class="ourItem" style="list-style-type: none;" data-toggle="modal" data-keywords="{{ $product->name }}" data-target="#myModal">
                                    <div class="col-lg-4" style="text-align: center;">
                                        <a href="{{ route('shop.show', $product->slug) }}"><img src="{{ asset($product->image) }}" style="margin-left: -20px; width: 200px; height: 200px;"></a>
                                        <h4>{{ $product->name }}</h4>
                                        <hr>
                                        <h5><b>Cena: {{ $product->presentPrice($product->price) }}</b></h5>
                                        <hr>
                                        <a href="{{ route('shop.show', $product->slug) }}"><button class="btn btn-primary btn-block">Informacije</button></a>
                                    </div>
                            </li>
                    @empty
                        <div class="alert alert-danger">
                            <strong>Obavestenje!</strong> Nema proizvoda u toj kategoriji.
                        </div>
                    @endforelse
                    </ul>
                </div>
            {{ $products->links() }}
        </div>
        <br>
    </div>
    <br>
    <!-- /BODY -->

    <script>
        $(document).ready(function () {

            $("#min_price").change(function () {
                var price = $(this).val();
                $("#current_price").text(price);
                var forelse = $("#idd").text();
               $.post('http://localhost:8000/shop', {'price': price, '_token': $('input[name=_token]').val()}, function (data) {
                   console.log(data);
                   $("#ppp").html(data);
                });
            });

            $("#searchItem1").keyup(function() {

                var input = $("#searchItem1").val().toLowerCase();
                $(".ourItem").hide();

                $(".ourItem").each(function () {
                    var outItem = $(this).attr("data-keywords").toLowerCase();
                    if(outItem.indexOf(input) >= 0) {
                        $(this).show();
                    }
                });
            });

        });
    </script>
    @endsection