<div class="col-lg-9">
<div class="container">
    <div class="row">
		@foreach (category_list_products($cat_id) as $key )
				@if(productNew($key->create_date) < 7)
					{[$new = 'is_new']}
				@else
					{[$new = ""]}
				@endif
        	<div class="col-md-3 hw">
            <figure class="card card-product-grid card-lg"> 
            	<a href="/product/detail/{{$key->id.'-'.$key->title_seo}}" class="img-wrap" data-abc="true">
            		<img src="/{{mainimage($key->id)}}" class="img-fluid">
            	</a>
                <figcaption class="info-wrap">
                    <div class="row">
                        <div class="col-md-8"> <a href="/product/detail/{{$key->id}}/{{$key->title_seo}}" class="title" data-abc="true">{{$key->title}}</a> </div>
                       
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
</div>
<!-- 

<div class="col-lg-9">
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
			<div class="row">
			@foreach (category_list_products($cat_id) as $key )
				@if(productNew($key->create_date) < 7)
					{[$new = 'is_new']}
				@else
					{[$new = ""]}
				@endif
		
			
				<div class="product_item {{$new}} m-3" style="border:1px solid #ccc;">
				
					<div class="product_image d-flex flex-column align-items-center justify-content-center">
						<a href="/product/detail/{{$key->id.'-'.$key->title_seo}}">
							<img src="/{{mainimage($key->id)}}" alt="" width="115" class="img-fluid"></div>
						</a>
						<div class="product_content">
							<div class="product_price">{[ echo $key->price ]} TL</div>
							<div class="product_name">
								<div>
									<a href="/product/detail/{{$key->id.'-'.$key->title_seo}}" tabindex="0">
										{{$key->title}}
									</a>
								</div>
							</div>
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

-->