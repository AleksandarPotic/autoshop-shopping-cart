@extends('user.layer.app')

@section('main-content')

<!-- SERVICE -->
<div class="row" style="background-color: #e0e0e0;">
    <div class="col-lg-11 col-lg-offset-1">
        <h2><b>Dijagnostika motora</b></h2>
    </div>
</div>
<br>
<div class="container">
    <div class="row">
        <h3>Kratak opis</h3>
        <hr>
        <div class="col-lg-6">
            <font size="4" color="gray"> Na tržištu EU putnička vozila sa dizel motorom M1 kategorije i ukupne mase < 2500 kg moraju biti opremljena EOBD sistemima od 1. januara 2003. godine. Za teretna vozila sa dizel motoromova granica se pomera od 1. januara 2006. godine. OBD dijagnostika podrazumeva obavezno prisustvo elektronike kod sistema za ubrizgavanje goriva i sklopova bitnih za kvalitet izduvnihgasova. U tom cilju se kod dizel motora elektronski sistemi primenjuju za kontrolu ubrizgavanja
                pod visokim pritisko, svih vrsta regulatora i ostalih važnih sistema motora. Svi ovi sistemimoraju biti povezani u mrežu i omogućiti upravljanje njihovim funkcijama od strane lokalnihupravljačkih jedinica ili od centralne upravljačke jedinice, kao i da imaju mogućnostiodgovarajuće dijagnostike. Tako su nastali moderni inteligentni sistemi kod savremenih vozila sa
                dizel motorom.</font>
        </div>
        <div class="col-lg-6">
            <img class="img-responsive" src="{{ asset('user/image/servis1.jpg') }}" alt="Chania">
        </div><br>
        <div class="col-lg-12">
            <h3>Na drugi pogled</h3>
            <hr>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Usluga</th>
                    <th>Cena</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Popravka prednjih kočnica</td>
                    <th>200$</th>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>Popravka zadnje kočnice</td>
                    <th>450$</th>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>Obuća za zadnju kočnicu</td>
                    <th>660$</th>
                </tr>
                <tr>
                    <th scope="row">4</th>
                    <td>Osovina</td>
                    <th>120$</th>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div><br>
<!-- /SERVICE -->

    @endsection