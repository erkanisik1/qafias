<?php 

$data['page'] = $page;

import::view(TEMA.'header', $data); 
Import::view(TEMA.'slider');

?>
	<div class="new_arrivals">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="tabbed_container">
						<div class="tabs clearfix tabs-right">
							<div class="new_arrivals_title">Yeni Gelenler</div>
							<ul class="clearfix"><li class="active"></li></ul>
							<div class="tabs_line"><span></span></div>
						</div>
						<div class="row">
							<div class="col-lg-12" style="z-index:1;">

								<!-- Product Panel -->
								<div class="product_panel panel active">
									<div class="arrivals_slider slider">
										<?php foreach (main_products('10') as $key): ?>
											
										<!-- Slider Item -->
										<div class="arrivals_slider_item">
											<div class="border_active"></div>
											<div class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
												<div class="product_image d-flex flex-column align-items-center justify-content-center" style="width:118px; height: 81px;">
													<img src="/<?php echo mainimage($key->id); ?>" alt="">
												</div>
												<div class="product_content">
													<div class="product_price" style="color:red"><?php echo $key->price; ?> TL</div>
													<div class="product_name">
														<div>
															<a href="/product_detail/<?php echo $key->id.'-'.$key->title_seo ?>"><?php echo $key->title; ?></a>
														</div>
													</div>
												</div>
											
											</div>
										</div>
										<?php endforeach ?>

								
									</div>
									<div class="arrivals_slider_dots_cover"></div>
								</div>


							</div>
>

						</div>
								
					</div>
				</div>
			</div>
		</div>		
	</div>



<?php import::view(TEMA.'footer'); ?>