{[ $orders = 0;]}

	<div class="cart_section">
		<div class="container">
			<div class="row">
				@view('User/sidebar')
				<div class="col-lg-9">
					<div class="cart_container">
						@if($sip)
						<div class="cart_title">Siparişlerim</div>
						<div class="cart_items">
							<ul class="cart_list">
								@foreach ($sip as $key ) 
								<li class="cart_item clearfix">
									<div class="cart_item_image"><img src="{[ echo mainimage($key->product_id); ]}" alt="" width="90"></div>
									<div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">
										<div class="cart_item_name cart_info_col">
											<div class="cart_item_title">ÜRÜN ADI</div>
											<div class="cart_item_text">{[ echo product_row($key->product_id)->title ]}</div>
										</div>
									
										<div class="cart_item_quantity cart_info_col">
											<div class="cart_item_title">Adet</div>
											<div class="cart_item_text">{[ echo $key->piece ]}</div>
										</div>
										<div class="cart_item_price cart_info_col">
											<div class="cart_item_title">FİYATI</div>
											<div class="cart_item_text">{[ echo price($key->price) ]}</div>
										</div>
										<div class="cart_item_total cart_info_col">
											<div class="cart_item_title">TOPLAM</div>
											<div class="cart_item_text">{[ $topla = $key->piece*$key->price; echo price($topla).' TL'; ]}</div>
										</div>
										<div class="cart_item_price cart_info_col">
											<div class="cart_item_title">DURUMU</div>
											<div class="cart_item_text">{[ echo $key->status ]}</div>
										</div>
									</div>
								</li>
							{[  $orders = $topla+$orders;  ]}
							@endforeach
							</ul>
						</div>
						
						<!-- Order Total -->
						<div class="order_total">
							<div class="order_total_content text-md-right">
								<div class="order_total_title">SİPARİŞ TOPLAMI</div>
								<div class="order_total_amount">{[ echo price($orders).' TL'; ]}</div>
							</div>
						</div>

						<div class="cart_buttons">
							<a href="{{URL::base()}}"><button type="button" class="button cart_button_clear">ALIŞVERİŞE DEVAM</button></a>
							<a href="/basket"><button type="button" class="button cart_button_checkout">KASAYA GİT</button></a>
						</div>
						@else
							<div class="card_title"><h2>Sepetiniz Boş</h2><br>
								Alışverişinize sizin için önerdiğimiz ürünlere göz atarak başlayabilirsiniz.45454
							</div>
						@endif
					</div>
				</div>
			</div>
		</div>
	</div>
