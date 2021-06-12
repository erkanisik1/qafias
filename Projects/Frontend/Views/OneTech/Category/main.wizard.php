
	<div class="home">
		<div class="home_background parallax-window" data-parallax="scroll" data-image-src="images/shop_background.jpg"></div>
		<div class="home_overlay"></div>
		<div class="home_content d-flex flex-column align-items-center justify-content-center">
			<h2 class="home_title">{{$category_name}}</h2>
		</div>
	</div>
<div class="shop">
	<div class="container">
		<div class="row">
			<!-- Shop Sidebar -->
			@view('Assets/sidebar')
			<!-- Shop Content -->
			@view('Category/shopContent')
		</div>
	</div>
</div>