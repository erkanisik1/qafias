

				<div class="col-lg-10 offset-lg-1">
					<div class="cart_container">
						
						<div class="cart_title">Alışveriş Sepetim</div>
						<div class="cart_items">
@if(Cart::selectItems())
 	{[$productList = Cart::selectItems()]}
@else
	{[$productList = $sip]}
@endif


							<ul class="cart_list">
								@foreach (Cart::selectItems() as $key )
								<li class="cart_item clearfix">
									<div class="cart_item_image"><img src="" alt="" width="90"></div>
									<div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">
										<div class="cart_item_name cart_info_col">
											<div class="cart_item_title">ÜRÜN ADI</div>
											<div class="cart_item_text"> </div>
										</div>
									
										<div class="cart_item_quantity cart_info_col">
											<div class="cart_item_title">Adet</div>
											<div class="cart_item_text"></div>
										</div>
										<div class="cart_item_price cart_info_col">
											<div class="cart_item_title">FİYATI</div>
											<div class="cart_item_text"></div>
										</div>
										<div class="cart_item_total cart_info_col">
											<div class="cart_item_title">TOPLAM</div>
											<div class="cart_item_text"> TL</div>
										</div>
										<div class="cart_item_price cart_info_col">
											<div class="cart_item_title">DURUMU</div>
											<div class="cart_item_text"></div>
										</div>
									</div>
								</li>
							
							 @endforeach 
							</ul>
						</div>
						
						<!-- Order Total -->
						<div class="order_total">
							<div class="order_total_content text-md-right">
								<div class="order_total_title">SİPARİŞ TOPLAMI</div>
								<div class="order_total_amount"></div>
							</div>
						</div>

						<div class="cart_buttons">
							<a href="/"><button type="button" class="button cart_button_clear">ALIŞVERİŞE DEVAM</button></a>
							<a href="/basket"><button type="button" class="button cart_button_checkout">KASAYA GİT</button></a>
						</div>
						
					</div>
				</div>