

	<div class="single_product">
		<div class="container">
			<div class="row">

				<!-- Images -->
				<div class="col-lg-2 order-lg-1 order-2">
					<ul class="image_list">
						@foreach (product_images($id) as $key )
							<li data-image="/{[ echo $key->link ]}"><img src="/{[ echo $key->link ]}" alt=""></li>	
						@endforeach
						
						
					</ul>
				</div>

				<!-- Selected Image -->
				<div class="col-lg-5 order-lg-2 order-1">
					<div class="image_selected"><img src="/{[ echo mainimage($id); ]}" alt=""></div>
				</div>

				<!-- Description -->
				<div class="col-lg-5 order-3">
					<div class="product_description">
						<div class="product_category">{[ echo products_category(product_detail($id)->category)->name; ]}</div>
						<div class="product_name">{[ echo product_detail($id)->title; ]}</div>
						<div class="product_text"><p>{[ echo product_detail($id)->content; ]}</p></div>
						<div class="order_info d-flex flex-row">
							<form action="#">
								<div class="clearfix" style="z-index: 1000;">

									<!-- Product Quantity -->
									<div class="product_quantity clearfix">
										<span>Adet: </span>
										<input id="quantity_input" type="text" name="quantity" pattern="[0-9]*" value="1">
										<div class="quantity_buttons">
											<div id="quantity_inc_button" class="quantity_inc quantity_control"><i class="fas fa-chevron-up"></i></div>
											<div id="quantity_dec_button" class="quantity_dec quantity_control"><i class="fas fa-chevron-down"></i></div>
										</div>
									</div>

									
								</div>

								<div class="product_price">{[ echo product_detail($id)->price; ]} TL</div>
								<div class="button_container">
									@if (Session::select('userid')) 
										<button type="button"  class="button cart_button" id="basket" data-id="{[ echo $id; ]}">Satın Al</button>
									@else
											{[Cookie::insert('url', '/product_detail/'.$id.'-'.product_detail($id)->title_seo);]}

									
										<a href="/user/login"><button type="button"  class="button cart_button">Satın Al</button></a>
									@endif
									
									<div class="product_fav"><i class="fas fa-heart"></i></div>
								</div>
								
							</form>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
