{[ $orders = 0;]}
<style>
	.param {
    margin-bottom: 7px;
    line-height: 1.4;
}
.param-inline dt {
    display: inline-block;
}
.param dt {
    margin: 0;
    margin-right: 7px;
    font-weight: 600;
}
.param-inline dd {
    vertical-align: baseline;
    display: inline-block;
}

.param dd {
    margin: 0;
    vertical-align: baseline;
} 

.shopping-cart-wrap .price {
    color: #007bff;
    font-size: 18px;
    font-weight: bold;
    margin-right: 5px;
    display: block;
    text-align: center;
}
var {
    font-style: normal;
}

.media img {
    margin-right: 1rem;
}
.img-sm {
    width: 90px;
    max-height: 75px;
    object-fit: cover;
}

.table td, .table th {
	vertical-align: middle !important;


}

.center{
	text-align: center !important;
}

</style>
<div class="cart_section" style="background:#fff;">
		<div class="container">
			<div class="cart_title">Alışveriş Sepetim</div>
			<div class="row">
				






<table class="table table-bordered table-hover shopping-cart-wrap">
<thead class="thead-dark text-center">
<tr>
  <th scope="col">Ürün</th>
  <th scope="col" width="120">Adet</th>
  <th scope="col" width="180">Fiyat</th>
  
</tr>
</thead>
<tbody>
@foreach ($sepet as $key  )


<tr>
	<td>
<figure class="media">
	<div class="img-wrap">
		<img src="/{{mainimage($key['productid'])}}" class="img-thumbnail img-sm">
	</div>
	<figcaption class="media-body">
		<h6 class="title text-truncate">{{$key['title']}} </h6>
		<div class="row">
			<div class="col-sm-6">
				<dl class="param param-inline small">
		  <dt>Size: </dt>
		  <dd>XXL</dd>
		</dl>
		<dl class="param param-inline small">
		  <dt>Color: </dt>
		  <dd>Orange color</dd>
		</dl>
			</div>
			<div class="col-sm-6">
					
		<dl class="text-right">
			<dt>
				<a title="" href="" class="btn btn-outline-success" data-toggle="tooltip" data-original-title="Save to Wishlist"> <i class="fa fa-heart"></i></a> 
	<a href="" class="btn btn-danger"> × Remove</a>
			</dt>
		
		</dl>
			</div>

		</div>
		
	
	</figcaption>
</figure> 
	</td>
	<td class="text-center"> 
		<select class="form-control">
			<option>1</option>
			<option>2</option>	
			<option>3</option>	
			<option>4</option>	
		</select> 
	</td>
	<td > 
		<div class="price-wrap "> 
			<var class="price">{{$key['price']}} TL</var> 
			 
		</div> <!-- price-wrap .// -->
	</td>
	
</tr>

 @endforeach 
<tr>
	<td colspan="2"  class="text-right ">Sepet Toplamı</td>
    <td class="price">{{price(Cart::totalPrices())}} TL</td>
</tr>
</tbody>
</table>
<div class="cart_buttons">
							<a href="/"><button type="button" class="button cart_button_clear">ALIŞVERİŞE DEVAM</button></a>
							<a href="/basket"><button type="button" class="button cart_button_checkout">KASAYA GİT</button></a>
						</div>

			</div>
		</div>
	</div>
