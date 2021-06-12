	<div class="container bg-white mt-2 radius">
		
		<div class="row">
			<div class="col-lg-5 d-flex justify-content-center">
				<div class="container d-flex justify-content-center">
					<section id="default" class="padding-top:0">
						<div class="row bg-white">							
							<div class="xzoom-container">
								<img class="xzoom xzoom-mainimage" id="xzoom-default" src="/{{mainimage($id)}}" xoriginal="/{{mainimage($id)}}"  />
								<div class="xzoom-thumbs">
									@foreach (product_images($id) as $key )
									<a href="/{{$key->link}}"><img class="xzoom-gallery" width="80" src="/{{$key->link}}" ></a> 
									@endforeach
								</div>
							</div>
						</div>
					</section>
				</div>				
			</div>

			<!-- Description -->
			<div class="col-lg-7 order-1">
				<div class="product_description">

					<div class="product_name">{{$title}}</div>
					
					<div class="product_category"><a href="{{URL::base()}}/category/{{$catId}}"></a>{{$category}}</div>
					
					<div class="product_text text-danger"><i class="fas fa-truck fa-flip-horizontal	"></i> {{$cargo}}</div>
					<div class="order_info d-flex flex-row">
						<form action="#">
							<div class="clearfix">

								<!-- Product Quantity -->
								<div class="product_quantity clearfix" >
									<span>Adet: </span>
									<input id="quantity_input" type="text" name="quantity" pattern="[0-9]*" value="1">
									<div class="quantity_buttons">
										<div id="quantity_inc_button" class="quantity_inc quantity_control"><i class="fas fa-chevron-up"></i></div>
										<div id="quantity_dec_button" class="quantity_dec quantity_control"><i class="fas fa-chevron-down"></i></div>
									</div>
								</div>
								<br><br><br>
								<style>
									.selec{
										width: 182px;

										display: contents;
										height: 50px;
										font-size: 16px;
										font-weight: 300;
										color: rgba(0,0,0,0.5);

									}
									.select::after {
									  content: "";
									  width: 0.8em;
									  height: 0.5em;
									  background-color: #000;
									  clip-path: polygon(100% 0%, 0 0%, 50% 100%);
									   justify-self: end;
									}
 

									.selec select {
										border: solid 1px #e5e5e5;
									  	border-radius: 5px;
									  	background-image:url(/images/arrow-down.png); 
									  	background-position: top 10px right 10px;
									  	background-repeat: no-repeat;
									   	background-size: 25px;
										height: 50px;
									  	width: 100%;
									 	cursor: pointer;
									  	margin-bottom: 15px;
									  	padding-left: 10px;
									  	letter-spacing: 1px;
									  	line-height: 50px;									 
									  	font-size: 16px;
									}
									.select{
										width: 182px;
										height: 50px;
										border: solid 1px #e5e5e5;
										border-radius: 5px;
										overflow: hidden;
										padding-left: 25px;
										margin-right: 30px;
										background: #fff;
										margin-left: 0px;
									}
									select{
										color: rgba(0,0,0,0.5) !important;
									}
									.select option{
										color: rgba(0,0,0,0.5);
									}
									.selec span{
										height: 50px;
										line-height: 50px;
										padding-right: 5px;

									}
								</style>

								<div class="row">

									@foreach (secenekler($id) as $key )

									{[ $secenek = explode(',',$key->secenek)]}
									<div class="selec ">
										<span >{{$key->label}} : </span>
										<select name="{{$key->label}}" id="" class="select ">
											
											@foreach ($secenek as $key )
											<option value="{{$key}}">{{$key}}</option>
											@endforeach
										</select>

									</div>

									@endforeach
								</div>




							</div>

							<div class="product_price">{{$price}} TL</div>
							<div class="button_container">
								

								{[Cookie::insert('url', '/product/detail/'.$id.'/'.product_detail($id)->title_seo);]}
								
								
								<button type="button"  class="cart_button btn btn-primary basket" id="basket" data-id="{{$id}}" >Sepete Ekle</button>

								<div class="product_fav"><i class="fas fa-heart"></i></div>
							</div>

						</form>
					</div>
				</div>
			</div>

		</div>
		
		<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 mb-5 mt-20 pb-2 bg-white">
			<div class="tab-regular ">
				<ul class="nav nav-tabs " id="myTab" role="tablist">
					<li class="nav-item"> <a class="nav-link active " id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Ürün Açıklaması</a> </li>
					<li class="nav-item"> <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Yorumlar</a> </li>

				</ul>
				<div class="tab-content pl-2" id="myTabContent" >
					<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
						<p class="lead">
							<p>{{$content}}</p>
						</div>
						<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
							<h3>Bu ürün için yorum yapılmamış.</h3>

						</div>

					</div>
				</div>
			</div>
		</div>