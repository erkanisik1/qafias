
@view('Home/slider')
<div class="super_container">
<div class="featured">
	<div class="tabbed_container">
		<div class="tabs container">
			<ul class="clearfix">
				<li class="active">Yeni Gelenler</li>
				
			</ul>
			<div class="tabs_line"><span style="left: 0px; width: 78.9219px;"></span></div>
		</div>

		<!-- Product Panel -->
		<div class="product_panel panel active">
			<div class="featured_slider slider slick-initialized slick-slider slick-dotted"><div class="slick-list draggable">
				<div class="slick-track" style="opacity: 1; width: 1464px; transform: translate3d(0px, 0px, 0px);">
					


		@foreach (main_products('10') as $key)
		<div class="slick-slide slick-active"  style="width: 183px;">
			<div>
				<div class="featured_slider_item" style="width: 100%; display: inline-block;">
				<div class="border_active"></div>
				<div class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
					<div class="product_image d-flex flex-column align-items-center justify-content-center">
						<img src="/{{mainimage($key->id)}}" alt="" width="115" ></div>
					<div class="product_content">
						<div class="product_price">{{$key->price}} TL</div>
						<div class="product_name">
							<div>
								<a href="/product_detail/{{$key->id}}-{{$key->title_seo}}" tabindex="0">{{$key->title}}</a>
							</div>
						</div>
						<div class="product_extras">							
							<a href="/product_detail/{{$key->id}}-{{$key->title_seo}}" tabindex="0">

								<button class="product_cart_button" tabindex="0">Satın Al</button>
							</a>
						</div>
					</div>
					<div class="product_fav"><i class="fas fa-heart"></i></div>
					<ul class="product_marks">

						<li class="product_mark product_discount">-25%</li>
						<li class="product_mark product_new">yeni</li>
					</ul>
				</div>
			</div>
		</div>
		<div>

	
		</div>


</div>
@endforeach


</div>

</div>
			<div class="featured_slider_dots_cover"></div>
		</div>


	</div>
</div>
</div>
</div>

<hr>
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


							<div class="product_panel panel active">
								<div class="featured_slider slider slick-initialized slick-slider slick-dotted">
									@foreach (main_products('10') as $key)

									
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div class="product_image d-flex flex-column align-items-center justify-content-center" style="width:118px; height: 81px;">
												<img src="/{{mainimage($key->id)}}" alt="">
											</div>
											<div class="product_content">
												<div class="product_price" style="color:red">{[ echo $key->price; ]} TL</div>
												<div class="product_name">
													<div>
														<a href="/product_detail/{[ echo $key->id.'-'.$key->title_seo ]}">{[ echo $key->title; ]}</a>
													</div>
												</div>
											</div>
											
										</div>
									</div>
									@endforeach


								</div>
								<div class="arrivals_slider_dots_cover"></div>
							</div>


						</div>


					</div>

				</div>
			</div>
		</div>
	</div>		
</div>
