 <style>.imgup{
  position:fixed;
  bottom:30px;
  right:20px;
  cursor:pointer;
  display:none;
  width: 65px;
  z-index: 100;
  
}
</style>

<div class="super_container">
	<header class="header" style="background: #F7F7F7;">

		<!-- Top Bar -->
		@view('Assets/Topbar')
		
		<!-- Header Main -->
		<div class="header_main">
			<div class="container">
				<div class="row">

					<!-- Logo -->
					<div class="col-lg-2 col-sm-3 col-3 order-1">
						<div class="logo_container">
							<div class="logo">
								
								<a href="{{URL::base()}}" >
									<img src="{{URL::base('upload/magazalogo/qafias_logo.jpeg')}}" alt="">
								</a>
							</div>
						</div>
					</div>

					<!-- Search -->
					@view('Assets/Search')

					<!-- Wishlist -->
					@view('Assets/Wishlist')
				</div>
			</div>
		</div>
		
		<!-- Main Navigation -->
@view('Assets/MainNavigation')

	<!-- Menu -->
		@view('Assets/pageMenu')

	</header>