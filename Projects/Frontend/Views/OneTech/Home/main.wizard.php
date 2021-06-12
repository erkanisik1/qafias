
@view('Home/slider')
<style>
	.image{
		
		display:flex;
align-items:center;
justify-content:center;
		
		height: 386px !important;
	}
	.img-thumbnail{
		
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
            		<div class="text-center image">
            			
            		<img src="/{{mainimage($key->id)}}" class="img-fluid img-thumbnail">
            		</div>
            	</a>
                <figcaption class="info-wrap">
                    <div class="row" style="margin-top:.25rem;">
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