

<div class="col-lg-9">
<div class="container">
	Aranan Ürün: {{$aranan}}<hr>
    <div class="row">
		@foreach ($search as $key )
				@if(productNew($key->create_date) < 7)
					{[$new = 'is_new']}
				@else
					{[$new = ""]}
				@endif
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
</div>