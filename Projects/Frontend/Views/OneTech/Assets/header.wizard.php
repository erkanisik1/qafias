<div class="super_container">
	<header class="header">
		@view('Assets/Topbar')
		<div class="header_main">
			<div class="container">
				<div class="row">
					<div class="col-lg-2 col-sm-3 col-3 order-1">
						<div class="logo_container">
							<div class="logo"><a href="{{URL::base()}}">{{settings('site_name')}}</a></div>
						</div>
					</div>
					
					@view('Assets/Search')
					@view('Assets/Wishlist')
					
				</div>
			</div>
		</div>
		@view('Assets/MainNavigation')
	</header>