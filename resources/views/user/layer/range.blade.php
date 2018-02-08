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

{{ $products->links() }}