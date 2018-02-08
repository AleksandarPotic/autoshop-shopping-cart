@extends('user.layer.app')

@section('main-content')

    <!-- CONTACT -->
    <div class="row" style="background-color: #e0e0e0;">
        <div class="col-lg-11 col-lg-offset-1">
            <h2><b>KONTAKT</b></h2>
        </div>
    </div>
    <br>
    <div class="container">
        <div class="embed-responsive embed-responsive-4by3">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2906.5644996958285!2d21.589781615150446!3d43.239589679137694!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4755c22478a7f477%3A0xee22c3d541bcd9f4!2z0KPRgdGC0LDQvdC40YfQutCwLCDQn9GA0L7QutGD0L_RmdC1!5e0!3m2!1ssr!2srs!4v1504303771153" width="auto" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
        <br>
        <form>
            <div class="col-lg-6">
                <label>Mozete nas kontaktirati</label>
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
            </div>
            <div class="col-lg-6">
                <div class="form-group">
                    <label for="exampleTextarea">Vasa poruka</label>
                    <textarea class="form-control" id="exampleTextarea" rows="6"></textarea>
                </div>
            </div>
            <div class="col-lg-12">
                <button type="submit" class="btn btn-primary">Posalji</button>
                <button type="reset" class="btn btn-danger">Izbrisi</button>
            </div><br>
        </form><br>
    </div><br>
    </div>
    <!-- /CONTACT -->

@endsection