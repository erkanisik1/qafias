
@view('Home/slider')
<style>
	.img-thumbnail{
		height: 386px !important;
		margin: auto !important;
		border:none;
		object-fit: cover;
	}
</style>

<div class="container">
    <div class="row">
		@foreach (main_products('100') as $key)
        	<div class="col-md-3 hw" >
            <figure class="card card-product-grid card-lg"> 
            	<a href="/product/detail/{{$key->id}}/{{$key->title_seo}}"  data-abc="true">
            		<div class="text-center">
            			
            		<img src="/{{mainimage($key->id)}}" class="img-fluid img-thumbnail">
            		</div>
            	</a>
                <figcaption class="info-wrap">
                    <div class="row">
                       <a href="/product/detail/{{$key->id}}/{{$key->title_seo}}" class="title" data-abc="true">{{$key->title}}</a>
                       
                    </div>
                </figcaption>
                <div class="bottom-wrap"> 
                	<div class="price-wrap mb-2" > <span class="price h5">{{$key->price}} TL</span>  </div>
                </div>
                    <div class="bottom-wrap-btn text-center " style="border-top: 1px solid #e4e4e4;padding: 10px; font-size: 1.3rem" >
                    	<a href="/product/detail/{{$key->id}}/{{$key->title_seo}}"> <i class="fas fa-check-circle"></i> İncele </a>
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
