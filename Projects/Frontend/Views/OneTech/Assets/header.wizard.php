<div class="super_container">
	<header class="header">

		<!-- Top Bar -->
		@view('Assets/Topbar')
		
		<!-- Header Main -->
		<div class="header_main">
			<div class="container">
				<div class="row">

					<!-- Logo -->
					<div class="col-lg-2 col-sm-3 col-3 order-1">
						<div class="logo_container">
							<div class="logo"><a href="{{URL::base()}}">{{settings('site_name')}}</a></div>
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