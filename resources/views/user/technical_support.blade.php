@extends('user.layer.app')

@section('main-content')

    <!-- FORM -->
    <div class="row" style="background-color: #e0e0e0;">
        <div class="col-lg-11 col-lg-offset-1">
            <h2><b>TEHNICKA PODRSKA</b></h2>
        </div>
    </div>
    <br><br><br>
    <div class="container">
        <br>
        <form>
            <div class="form-group">
                <label for="exampleSelect1">Izaberi marku automobila</label>
                <select class="form-control" id="exampleSelect1">
                    <option>Opel</option>
                    <option>Renault</option>
                    <option>Fiat</option>
                    <option>Mercedes</option>
                    <option>Mazda</option>
                    <option>Audi</option>
                    <option>Volkswagen</option>
                </select>
            </div>
            <div class="form-group">
                <label for="example-number-input" class="col-2 col-form-label">Kilometraza</label>
                <div class="col-10">
                    <input class="form-control" type="number" id="example-number-input">
                </div>
            </div>
            <div class="form-group">
                <label for="example-number-input" class="col-2 col-form-label">Godiste</label>
                <div class="col-10">
                    <input class="form-control" type="number" value="2008" id="example-years-input">
                </div>
            </div>
            <label>Podaci o vama</label>
            <div class="form-group">
                <input type="email" class="form-control" id="exampleInputName" aria-describedby="emailHelp" placeholder="Ime">
            </div>
            <div class="form-group">
                <input type="email" class="form-control" id="exampleInputNickName" aria-describedby="emailHelp" placeholder="Prezime">
            </div>
            <div class="form-group">
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Upisi email">
                <small id="emailHelp" class="form-text text-muted">Niko nece znati vas e-mail, budite sigurni.</small>
            </div>
            <div class="form-group">
                <label for="exampleTextarea">Vasa poruka</label>
                <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Posalji</button>
            <button type="reset" class="btn btn-danger">Izbrisi</button>
        </form><br>
    </div>
    <!-- /FORM -->

@endsection