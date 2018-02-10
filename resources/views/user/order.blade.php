@extends('user.layer.app')

@section('main-content')

    <!-- CONTACT -->
    <div class="row" style="background-color: #e0e0e0;">
        <div class="col-lg-11 col-lg-offset-1">
            <h2><b>NARUDZBINE</b></h2>
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
        <h2>Narudzbine</h2>
        <div class="col-lg-9 pull-right">
            <p><strong>Porudzbine:</strong> Ovde se nalaze sve porudzbine koje se salju kurirskom sluzbom.</p>
            <div class="panel-group" id="accordion">
                @foreach($orders as $order)
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse{{ $loop->index +1 }}">
                                    Narudzbina {{ $loop->index+1 }} / <span class="glyphicon glyphicon-euro"></span> Nacin transakcije: {{ $order->transaction }} / <span class="glyphicon glyphicon-time"></span> Vreme narudzbine: {{ $order->created_at }}
                                </a>
                            </h4>
                        </div>
                        <div id="collapse{{ $loop->index+1 }}" class="panel-collapse collapse">
                            <div class="panel-body">
                                        <table class="table table-bordered">
                                            <thead>
                                            <tr>
                                                <th>Ime</th>
                                                <th>Kolicina</th>
                                                <th>Cena</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            @foreach($order->cart as $item)
                                                <tr>
                                                    <td>{{ $item->name }}</td>
                                                    <td>{{ $item->qty }}</td>
                                                    <td>${{ $item->price }}</td>
                                                </tr>
                                            @endforeach
                                            <tr>
                                                <td><b>Ukupna cena:</b></td>
                                                <td>${{ $order->totalPrice }}</td>
                                            </tr>
                                            </tbody>
                                        </table>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>

    @endsection