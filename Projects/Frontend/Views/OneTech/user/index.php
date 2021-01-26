<?php import::view(TEMA.'header'); $orders = 0;?>
	<div class="cart_section">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<div class="cart_container">
						<div class="cart_title">Siparişlerim</div>
						<div class="cart_items">
							<ul class="cart_list">
								<?php foreach ($sip as $key ) { ?>
								<li class="cart_item clearfix">
									<div class="cart_item_image"><img src="<?php echo mainimage($key->product_id); ?>" alt="" width="90"></div>
									<div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">
										<div class="cart_item_name cart_info_col">
											<div class="cart_item_title">ÜRÜN ADI</div>
											<div class="cart_item_text"><?php echo product_row($key->product_id)->title ?></div>
										</div>
									
										<div class="cart_item_quantity cart_info_col">
											<div class="cart_item_title">Adet</div>
											<div class="cart_item_text"><?php echo $key->piece ?></div>
										</div>
										<div class="cart_item_price cart_info_col">
											<div class="cart_item_title">FİYATI</div>
											<div class="cart_item_text"><?php echo price($key->price) ?></div>
										</div>
										<div class="cart_item_total cart_info_col">
											<div class="cart_item_title">TOPLAM</div>
											<div class="cart_item_text"><?php $topla = $key->piece*$key->price; echo price($topla).' TL'; ?></div>
										</div>
										<div class="cart_item_price cart_info_col">
											<div class="cart_item_title">DURUMU</div>
											<div class="cart_item_text"><?php echo $key->status ?></div>
										</div>
									</div>
								</li>
							<?php  $orders = $topla+$orders; } ?>
							</ul>
						</div>
						
						<!-- Order Total -->
						<div class="order_total">
							<div class="order_total_content text-md-right">
								<div class="order_total_title">SİPARİŞ TOPLAMI</div>
								<div class="order_total_amount"><?php echo price($orders).' TL'; ?></div>
							</div>
						</div>

						<div class="cart_buttons">
							<a href="/"><button type="button" class="button cart_button_clear">ALIŞVERİŞE DEVAM</button></a>
							<a href="/basket"><button type="button" class="button cart_button_checkout">KASAYA GİT</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


<?php import::view(TEMA.'footer'); ?>
