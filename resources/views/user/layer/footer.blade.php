<!-- FOOTER -->
<footer style="background-color: #73767a;"><br>
    <div class="row">
        <div class="col-lg-2 col-lg-offset-2" style="text-align: center;">
            <img src="{{ asset('user/image/f1.jpg') }}"><br><br>
            <font color="#bababa" size="4">PROKUPLJE 18400<br>UL.USTANICKA 48/14 b</font>
        </div>
        <div class="col-lg-2" style="text-align: center;">
            <img src="{{ asset('user/image/f2.jpg') }}"><br><br>
            <font color="#bababa" size="4">RADNO VREME 8h-15h<br>066/000-0000<br>027/000-000</font>
        </div>
        <div class="col-lg-2" style="text-align: center;">
            <img src="{{ asset('user/image/f3.jpg') }}"><br><br>
            <font color="#bababa" size="4">RADNO VREME 0h-24h<br>066/000-0000</font>
        </div>
        <div class="col-lg-3" style="margin-top: 7px; text-align: center;">
            <div class="embed-responsive embed-responsive-4by3">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2906.5644996958285!2d21.589781615150446!3d43.239589679137694!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4755c22478a7f477%3A0xee22c3d541bcd9f4!2z0KPRgdGC0LDQvdC40YfQutCwLCDQn9GA0L7QutGD0L_RmdC1!5e0!3m2!1ssr!2srs!4v1504303771153" width="auto" height="auto" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
        </div>
    </div><br>
</footer>
<!-- /FOOTER -->
<!-- BACK TO TOP -->
<script type="text/javascript">
    // create the back to top button
    $('body').prepend('<a href="#" class="back-to-top">Back to Top</a>');

    var amountScrolled = 300;

    $(window).scroll(function() {
        if ( $(window).scrollTop() > amountScrolled ) {
            $('a.back-to-top').fadeIn('slow');
        } else {
            $('a.back-to-top').fadeOut('slow');
        }
    });

    $('a.back-to-top, a.simple-back-to-top').click(function() {
        $('html, body').animate({
            scrollTop: 0
        }, 700);
        return false;
    });
    </script>


<!-- /BACK TO TOP -->