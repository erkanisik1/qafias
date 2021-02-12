	<div class="container">
		
		<div class="row">
			<div class="col-lg-5 d-flex justify-content-center">
				<div class="container d-flex justify-content-center">
					<section id="default" class="padding-top:0">
						<div class="row">							
							<div class="xzoom-container">
								<img class="xzoom xzoom-mainimage" id="xzoom-default" src="/{{mainimage($id)}}" xoriginal="/{{mainimage($id)}}"  />
								<div class="xzoom-thumbs">
									@foreach (product_images($id) as $key )
									<a href="/{{$key->link}}"><img class="xzoom-gallery" width="80" src="/{{$key->link}}" ></a> 
									@endforeach
								</div>
							</div>
						</div>
					</section>
				</div>				
			</div>

			<!-- Description -->
			<div class="col-lg-5 order-1">
				<div class="product_description">
					<div class="product_category">{{$category}}</div>
						<!-- 
						<div class="product_name">{{$title}}</div>
					-->
					<div class="product_text"><p>{{$content}}</p></div>
					<div class="product_text text-danger"><i class="fas fa-truck fa-flip-horizontal	"></i> {{$cargo}}</div>
					<div class="order_info d-flex flex-row">
						<form action="#">
							<div class="clearfix">

								<!-- Product Quantity -->
								<div class="product_quantity clearfix" >
									<span>Adet: </span>
									<input id="quantity_input" type="text" name="quantity" pattern="[0-9]*" value="1">
									<div class="quantity_buttons">
										<div id="quantity_inc_button" class="quantity_inc quantity_control"><i class="fas fa-chevron-up"></i></div>
										<div id="quantity_dec_button" class="quantity_dec quantity_control"><i class="fas fa-chevron-down"></i></div>
									</div>
								</div>


							</div>

							<div class="product_price">{{$price}} TL</div>
							<div class="button_container">
								@if (Session::select('USERID')) 
								<button type="button"  class="button cart_button" id="basket" data-id="{[ echo $id; ]}">Satın Al</button>
								@else
								{[Cookie::insert('url', '/product/detail/'.$id.'/'.product_detail($id)->title_seo);]}
								<a href="/user/login">
									<button type="button"  class="button cart_button">Satın Al</button>
								</a>
								@endif

								<div class="product_fav"><i class="fas fa-heart"></i></div>
							</div>

						</form>
					</div>
				</div>
			</div>

		</div>
	</div>