    <input type="hidden" name="cmd" value="_cart">
    <input type="hidden" name="upload" value="1">
    <div class="form-group row">
        <div class="col-10">
            <input class="form-control" type="hidden" id="email" name="business" value="autoshop-payment@gmail.com" placeholder="Email adresa">
        </div>
    </div>

    @foreach(Cart::content() as $item)
    <input type="hidden" name="item_name_{{ $loop->index+1 }}" value="{{ $item->name }}">
    <input type="hidden" name="item_number_{{ $loop->index+1 }}" value="{{ $item->details }}">
    <input type="hidden" name="quantity_{{ $loop->index+1 }}" value="{{ $item->qty }}">
    <input type="hidden" name="amount_{{ $loop->index+1 }}" value="{{ $item->price }}">
    <input type="hidden" name="shopping_{{ $loop->index+1 }}" value="2000">

    <input type="hidden" name="weight_{{ $loop->index+1 }}" value="1.5">
    <input type="hidden" name="weight_unit" value="kgs">

    @endforeach
    @if(session('coupon'))
        <input type="hidden" name="tax_cart" value="{{ $newTax }}">
    @else
        <input type="hidden" name="tax_cart" value="{{ $tax }}">
    @endif
    <input type="hidden" name="return" id="return" value="{{ route('thanks.index') }}">

    <input type="hidden" name="cancel_return" id="cancel_return" value="{{ route('checkout.index') }}">

    <input name="submit" id="paypal" type="image" src="https://az694268.vo.msecnd.net/content/images/paypal-checkout.png?v=196" width="50%" alt="PayPal Acceptance" formaction="https://www.sandbox.paypal.com/cgi-bin/webscr">