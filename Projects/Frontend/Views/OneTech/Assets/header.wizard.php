<div class="super_container">
	<header class="header">
		<div class="top_bar">
			<div class="container">
				<div class="row">
					<div class="col d-flex flex-row">
						<div class="top_bar_contact_item"><div class="top_bar_icon"><img src="images/phone.png" alt=""></div>{[ echo settings('telephone') ]}</div>
						<div class="top_bar_contact_item"><div class="top_bar_icon"><img src="images/mail.png" alt=""></div><a href="mailto:fastsales@gmail.com">{[ echo settings('mail') ]}</a></div>
						<div class="top_bar_content ml-auto">
						{[ if(Session::select('login') == true){ ]}
							<div class="top_bar_user">
								<div class="user_icon"><i class="fas fa-user"></i></div>
								<div><a href="/user">{[ echo Session::select('user') ]}</a></div>
								<div><i class="fas fa-sign-out-alt"></i> <a href="/user/logout">Çıkış</a></div>
								
							</div>
						{[ }else{ ]}
							<div class="top_bar_user">
								<div class="user_icon"><i class="fas fa-user"></i></div>
								<div><a href="/user/register">Kayıt Ol</a></div>
								<div><i class="fas fa-sign-in-alt"></i> <a href="/user/login">Giriş Yap</a></div>
							</div>
						{[ } ]}
						</div>
					</div>
				</div>
			</div>		
		</div>
		<div class="header_main">
			<div class="container">
				<div class="row">
					<div class="col-lg-2 col-sm-3 col-3 order-1">
						<div class="logo_container">
							<div class="logo"><a href="#">{{settings('site_name')}}</a></div>
						</div>
					</div>
					<div class="col-lg-6 col-12 order-lg-2 order-3 text-lg-left text-right">
						<div class="header_search">
							<div class="header_search_content">
								<div class="header_search_form_container">
									<form action="#" class="header_search_form clearfix">
										<input type="search" required="required" class="header_search_input" placeholder="Ürün Ara...">
									
										<button type="submit" class="header_search_button trans_300" value="Submit"><img src="images/search.png" alt=""></button>
									</form>
								</div>
							</div>
						</div>
					</div>

					<!-- Wishlist -->
					<div class="col-lg-4 col-9 order-lg-3 order-2 text-lg-left text-right">
						<div class="wishlist_cart d-flex flex-row align-items-center justify-content-end">
							<div class="wishlist d-flex flex-row align-items-center justify-content-end">
								<div class="wishlist_icon"><img src="images/heart.png" alt=""></div>
								<div class="wishlist_content">
									<div class="wishlist_text"><a href="/wishlist">İstek Listesi</a></div>
									<div class="wishlist_count">0</div>
								</div>
							</div>

							<!-- Cart -->
							<div class="cart">
								<div class="cart_container d-flex flex-row align-items-center justify-content-end">
									<div class="cart_icon">
										<img src="images/cart.png" alt="">
										<div class="cart_count"><span>{{Cart::totalItems()}}</span></div>
									</div>
									<div class="cart_content">
										<div class="cart_text"><a href="/sepet">Sepetim</a></div>
										<div class="cart_price">{{price(Cart::totalPrices())}} TL</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		@view('Assets/MainNavigation')
		</header>
	