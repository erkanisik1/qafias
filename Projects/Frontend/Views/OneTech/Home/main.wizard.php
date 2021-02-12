
@view('Home/slider')


<div class="container">
    <div class="row">
		@foreach (main_products('9') as $key)
        	<div class="col-md-4">
            <figure class="card card-product-grid card-lg"> 
            	<a href="/product/detail/{{$key->id}}/{{$key->title_seo}}" class="img-wrap" data-abc="true">
            		<img src="/{{mainimage($key->id)}}">
            	</a>
                <figcaption class="info-wrap">
                    <div class="row">
                        <div class="col-md-8"> <a href="/product/detail/{{$key->id}}/{{$key->title_seo}}" class="title" data-abc="true">{{$key->title}}</a> </div>
                       
                    </div>
                </figcaption>
                <div class="bottom-wrap"> 
                	<a href="/product/detail/{{$key->id}}/{{$key->title_seo}}" class="btn btn-primary float-right"> Satın Al </a>
                    <div class="price-wrap" style="width: 50%"> <span class="price h5">{{$key->price}} TL</span>  </div>
                </div>
            </figure>
        	</div>
        @endforeach

    </div>
</div>

	<!-- 
	<div class="featured container">
		<div class="tabbed_container">
			<div class="tabs container">
				<ul class="clearfix">
					<li class="active">Yeni Gelenler</li>

				</ul>
				<div class="tabs_line"><span style="left: 0px; width: 78.9219px;"></span></div>
			</div>
			

		
			<div class="product_panel panel active">
				<div class="featured_slider slider slick-initialized slick-slider slick-dotted"><div class="slick-list draggable">
					<div class="slick-track" style="opacity: 1; width: 1464px; transform: translate3d(0px, 0px, 0px);">
						@foreach (main_products('10') as $key)
						<div class="slick-slide slick-active"  style="width: 300px">
							<div>
								<div class="featured_slider_item" style="width: 100%; display: inline-block;">
									<div class="border_active"></div>
									<div class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
										<div class="product_image d-flex flex-column align-items-center justify-content-center">
											<img src="/{{mainimage($key->id)}}" alt="" width="150" ></div>
											<div class="product_content">
												<div class="product_price">{{$key->price}} TL</div>
												<div class="product_name">
													<div>
														<a href="/product/detail/{{$key->id}}/{{$key->title_seo}}" tabindex="0">{{$key->title}}</a>
													</div>
												</div>
												<div class="product_extras">							
													<a href="/product/detail/{{$key->id}}/{{$key->title_seo}}" tabindex="0">

														<button class="product_cart_button" tabindex="0">Satın Al</button>
													</a>
												</div>
											</div>
											<div class="product_fav"><i class="fas fa-heart"></i></div>
											<ul class="product_marks">

												<li class="product_mark product_discount">-25%</li>
												<li class="product_mark product_new">Yeni</li>
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
	 -->
