@extends('user.layer.app')

@section('main-content')

    <!-- SERVICE -->
    <div class="row" style="background-color: #e0e0e0;">
        <div class="col-lg-11 col-lg-offset-1">
            <h2><b>IME PROIZVODA</b></h2>
        </div>
    </div>
    <br>
    <div class="container">
        <div class="row" style="margin-top: 100px; margin-bottom: 100px;">

            <div class="alert alert-success" id="success" style="display: none">
                <strong>Uspesno!</strong> Proizvod je dodat u korpi.
            </div>

            <div class="alert alert-danger" id="danger" style="display: none">
                <strong>Problem!</strong> Proizvod se vec nalazi u korpi.
            </div>

            <div class="col-lg-4 col-lg-offset-2" style="text-align: center; margin-top: 15px; border-width:2px; border-style:solid;">
                <img src="{{ asset($product->image) }}" height="270px" width="270px">
            </div>
            <div class="col-lg-3" style="text-align: center;">
                <h3><b>{{ $product->name }}</b></h3>
                <h5><b>{{ $product->details }}</b></h5>
                <h5><b>Cena: {{ $product->presentPrice($product->price) }}</b></h5>
                <h5>{!! $product->description !!}</h5>
                <div id="divResult">

                </div>
                <hr>
                <form action="{{ route('cart.store') }}" method="POST">
                    {{ csrf_field() }}
                    <select class="form-control quantity">
                        @for($i = 1 ; $i <= 6; $i++)
                            <option value="{{ $i }}">{{ $i }}</option>
                        @endfor
                    </select><br>
                    <input type="hidden" name="id" id="id" value="{{ $product->id }}">
                    <input type="hidden" name="name" id="name" value="{{ $product->name }}">
                    <input type="hidden" name="price" id="price" value="{{ $product->price }}">
                    <input type="hidden" name="species" id="species_value" value="">
                    <input type="hidden" name="type" id="type_value" value="">

                    <button type="button" id="add" class="btn btn-primary btn-block">Dodaj u korpu</button>
                    @if(!Auth::guest())
                        <button type="button" class="btn btn-danger btn-block" data-toggle="modal" data-target="#myModal">Prilagodi</button>
                    @endif
                </form>
                <!-- Modal -->
                <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Modal Header</h4>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <p>Izaberi tip</p>
                                    <label class="radio-inline">
                                        <input type="checkbox" name="type" id="type" value="tip1">Tip 1
                                    </label>
                                    <label class="radio-inline">
                                        <input type="checkbox" name="type" id="type" value="tip2">Tip 2
                                    </label>
                                    <label class="radio-inline">
                                        <input type="checkbox" name="type" id="type" value="tip3">Tip 3
                                    </label>
                                    <p>Izaberi vrstu</p>
                                    <label class="radio-inline">
                                        <input type="radio" name="species" id="species" value="vrsta1">Vrsta 1
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="species" id="species" value="vrsta2">Vrsta 2
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="species" id="species" value="vrsta3">Vrsta 3
                                    </label>

                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" id="submit_radio" class="btn btn-success" data-dismiss="modal">Dodaj</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-12">
            <h3>Jos proizvoda iz nase palete...</h3>
            <hr>
            @foreach($alsoProducts as $item)
                <div class="col-lg-3" style="text-align: center; border-width:1px; border-style:solid;">
                    <a href="{{ route('shop.show', $item->slug) }}"><img src="{{ asset($item->image) }}" width="250px" height="200px"></a>
                    <h4>{{ $item->name }}</h4>
                    <h5>{{ $item->details }}</h5>
                    <h5><b>{{ $product->presentPrice($product->price) }}</b></h5>
                </div>
            @endforeach
        </div>
    </div><br>
    <!-- /SERVICE -->

    <script>

        $(document).ready(function () {

            var message = function (status) {
                $(status).show(300);
                $(status).click(function () {
                    $(status).hide(300);
                })
            };

            $("#submit_radio").click(function () {
                var resultString = '';
                if ($("#type:checked").length > 0){

                    $("#type:checked").each(function(){
                        resultString += $(this).val() + ' ';
                    });
                }
                $("#type_value").val(resultString);

                var species = $("#species:checked").val();

                $("#species_value").val(species);
            });

            $("#add").click(function () {
                var id = $("#id").val();
                var name = $("#name").val();
                var price = $("#price").val();
                var qty = $(".quantity").val();
                var species = $("#species_value").val();
                var type = $("#type_value").val();


                $.post('http://localhost:8000/cart', {'id': id, 'name': name, 'price': price, 'quantity': qty, 'type': type, 'species': species,'_token': $('input[name=_token]').val()}, function (data) {
                    if (data !== "Greska"){

                        $("#nav_id").html(data);
                        message($("#success"));
                    } else {
                        message($("#danger"));
                    }
                });
            })
        });

    </script>

@endsection