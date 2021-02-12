
	<div class="home">
		<div class="home_background parallax-window" data-parallax="scroll" data-image-src="images/shop_background.jpg"></div>
		<div class="home_overlay"></div>
		<div class="home_content d-flex flex-column align-items-center justify-content-center">
			<h2 class="home_title">{{$category_name}}</h2>
		</div>
	</div>

	<!-- Shop -->

	<div class="shop">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">

					<!-- Shop Sidebar -->
				@view('Category/category')

				</div>

				<div class="col-lg-9">
					
					<!-- Shop Content -->

					<div class="shop_content">
						<div class="shop_bar clearfix">
							<div class="shop_product_count">Toplam <span>{{$productCount}}</span> ürün bulundu</div>
							<div class="shop_sorting">
								<span>Sıralama:</span>
								<ul>
									<li>
										<span class="sorting_text">Seçiniz<i class="fas fa-chevron-down"></i></span>
										<ul>
											<li class="shop_sorting_button" data-isotope-option='{ "sortBy": "original-order" }'>Azalan Fiyat</li>
											<li class="shop_sorting_button" data-isotope-option='{ "sortBy": "original-order" }'>Artan Fiyat</li>
											<li class="shop_sorting_button" data-isotope-option='{ "sortBy": "name" }'>Yeni Ürün</li>
											
										</ul>
									</li>
								</ul>
							</div>
						</div>

						<div class="product_grid">
							<div class="product_grid_border"></div>

							@foreach (category_list_products($cat_id) as $key )
							<div class="row">
							<!-- Product Item -->
							<div class="product_item is_new">
								<div class="product_border"></div>
								<div class="product_image d-flex flex-column align-items-center justify-content-center" style="width:118px; height: 81px;">
									<img src="/{[ echo mainimage($key->id); ]}" alt=""></div>
								<div class="product_content">
									<div class="product_price">{[ echo $key->price ]} TL</div>
									<div class="product_name"><div><a href="/product/detail/{[ echo $key->id.'-'.$key->title_seo ]}" tabindex="0">{[ echo $key->title ]}</a></div></div>
								</div>
								<div class="product_fav"><i class="fas fa-heart"></i></div>
								<ul class="product_marks">
									<li class="product_mark product_discount">-25%</li>
									<li class="product_mark product_new">Yeni</li>
								</ul>
							</div>
							</div>
							@endforeach
						</div>

					

					</div>

				</div>
			</div>
		</div>
	</div>
