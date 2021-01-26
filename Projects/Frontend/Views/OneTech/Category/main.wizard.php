
	<div class="home">
		<div class="home_background parallax-window" data-parallax="scroll" data-image-src="images/shop_background.jpg"></div>
		<div class="home_overlay"></div>
		<div class="home_content d-flex flex-column align-items-center justify-content-center">
			<h2 class="home_title">{[ echo category($cat_id)->name; ]}</h2>
		</div>
	</div>

	<!-- Shop -->

	<div class="shop">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">

					<!-- Shop Sidebar -->
					<div class="shop_sidebar">
						<div class="sidebar_section">
							<div class="sidebar_title">KATEGORİLER</div>
							<ul class="sidebar_categories">
								@foreach (menu($cat_id) as $key)
									<li><a href="/category/{[ echo $key->id.'-'.$key->seo; ]}">{[ echo $key->name ]}</a></li>
								@endforeach
							</ul>
						</div>
						<div class="sidebar_section filter_by_section">
							<div class="sidebar_title">Filter By</div>
							
						</div>
						<div class="sidebar_section">
							<div class="sidebar_subtitle color_subtitle">RENK</div>
							<ul class="colors_list">
								<li class="color"><a href="#" style="background: #b19c83;"></a></li>
								<li class="color"><a href="#" style="background: #000000;"></a></li>
								<li class="color"><a href="#" style="background: #999999;"></a></li>
								<li class="color"><a href="#" style="background: #0e8ce4;"></a></li>
								<li class="color"><a href="#" style="background: #df3b3b;"></a></li>
								<li class="color"><a href="#" style="background: #ffffff; border: solid 1px #e1e1e1;"></a></li>
							</ul>
						</div>
						<div class="sidebar_section">
							<div class="sidebar_subtitle brands_subtitle">MARKALAR</div>
							<ul class="brands_list">
								@foreach (brand() as $key )
									<li class="brand"><a href="#">{[ echo $key->brand; ]}</a></li>
								@endforeach
								
								
							</ul>
						</div>
					</div>

				</div>

				<div class="col-lg-9">
					
					<!-- Shop Content -->

					<div class="shop_content">
						<div class="shop_bar clearfix">
							<div class="shop_product_count">Toplam <span>{[ echo count(category_list_products($cat_id)); ]}</span> ürün bulundu</div>
							<div class="shop_sorting">
								<span>Sıralama:</span>
								<ul>
									<li>
										<span class="sorting_text">Seçiniz<i class="fas fa-chevron-down"></span></i>
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
							<!-- Product Item -->
							<div class="product_item is_new">
								<div class="product_border"></div>
								<div class="product_image d-flex flex-column align-items-center justify-content-center" style="width:118px; height: 81px;">
									<img src="/{[ echo mainimage($key->id); ]}" alt=""></div>
								<div class="product_content">
									<div class="product_price">{[ echo $key->price ]} TL</div>
									<div class="product_name"><div><a href="/product_detail/{[ echo $key->id.'-'.$key->title_seo ]}" tabindex="0">{[ echo $key->title ]}</a></div></div>
								</div>
								<div class="product_fav"><i class="fas fa-heart"></i></div>
								<ul class="product_marks">
									<li class="product_mark product_discount">-25%</li>
									<li class="product_mark product_new">Yeni</li>
								</ul>
							</div>
							@endforeach
						</div>

					

					</div>

				</div>
			</div>
		</div>
	</div>
