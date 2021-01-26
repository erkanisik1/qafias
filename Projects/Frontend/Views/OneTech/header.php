<!DOCTYPE html>
<html lang="en">
<head>
<title><?php echo settings('site_name'); ?></title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="<?php echo settings('description'); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="yandex-verification" content="fe44c163108d9750" />

<link rel="stylesheet" type="text/css" href="/<?php echo THEMES_DIR;?>OneTech/styles/bootstrap4/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/<?php echo THEMES_DIR;?>OneTech/plugins/fontawesome-free-5.0.1/css/fontawesome-all.css">
<link rel="stylesheet" type="text/css" href="/<?php echo THEMES_DIR;?>OneTech/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="/<?php echo THEMES_DIR;?>OneTech/plugins/wlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="/<?php echo THEMES_DIR;?>OneTech/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="/<?php echo THEMES_DIR;?>OneTech/plugins/slick-1.8.0/slick.css">
<link rel="stylesheet" type="text/css" href="/<?php echo THEMES_DIR;?>OneTech/styles/responsive.css">
<link rel="stylesheet" type="text/css" href="/<?php echo THEMES_DIR;?>OneTech/styles/jquery-confirm.css">
<?php if (isset($page) != 'home'){ ?>
	<link rel="stylesheet" type="text/css" href="/<?php echo THEMES_DIR;?>OneTech/styles/shop_styles.css">
	<link rel="stylesheet" type="text/css" href="/<?php echo THEMES_DIR;?>OneTech/styles/shop_responsive.css">
	<link rel="stylesheet" type="text/css" href="/<?php echo THEMES_DIR;?>OneTech/styles/product_styles.css">
	<link rel="stylesheet" type="text/css" href="/<?php echo THEMES_DIR;?>OneTech/styles/product_responsive.css">
	<link rel="stylesheet" type="text/css" href="/<?php echo THEMES_DIR;?>OneTech/styles/regular_styles.css">
	<link rel="stylesheet" type="text/css" href="/<?php echo THEMES_DIR;?>OneTech/styles/regular_responsive.css">
	<link rel="stylesheet" type="text/css" href="/<?php echo THEMES_DIR;?>OneTech/styles/cart_styles.css">
	<link rel="stylesheet" type="text/css" href="/<?php echo THEMES_DIR;?>OneTech/styles/cart_responsive.css">

	
<?php }else{ ?>
	<link rel="stylesheet" type="text/css" href="/<?php echo THEMES_DIR;?>OneTech/styles/main_styles.css">
<?php } ?>


 

</head>

<body>

<div class="super_container">
	<header class="header">
		<div class="top_bar">
			<div class="container">
				<div class="row">
					<div class="col d-flex flex-row">
						<div class="top_bar_contact_item"><div class="top_bar_icon"><img src="/<?php echo THEMES_DIR;?>OneTech/images/phone.png" alt=""></div><?php echo settings('telephone') ?></div>
						<div class="top_bar_contact_item"><div class="top_bar_icon"><img src="/<?php echo THEMES_DIR;?>OneTech/images/mail.png" alt=""></div><a href="mailto:fastsales@gmail.com"><?php echo settings('mail') ?></a></div>
						<div class="top_bar_content ml-auto">
						<?php if(Session::select('login') == true){ ?>
							<div class="top_bar_user">
								<div class="user_icon"><i class="fas fa-user"></i></div>
								<div><a href="/user"><?php echo Session::select('user') ?></a></div>
								<div><i class="fas fa-sign-out-alt"></i> <a href="/user/logout">Çıkış</a></div>
								
							</div>
						<?php }else{ ?>
							<div class="top_bar_user">
								<div class="user_icon"><i class="fas fa-user"></i></div>
								<div><a href="/user/register">Kayıt Ol</a></div>
								<div><i class="fas fa-sign-in-alt"></i> <a href="/user/login">Giriş Yap</a></div>
							</div>
						<?php } ?>
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
							<div class="logo"><a href="#"><?php echo settings('site_name') ?></a></div>
						</div>
					</div>
					<div class="col-lg-6 col-12 order-lg-2 order-3 text-lg-left text-right">
						<div class="header_search">
							<div class="header_search_content">
								<div class="header_search_form_container">
									<form action="#" class="header_search_form clearfix">
										<input type="search" required="required" class="header_search_input" placeholder="Ürün Ara...">
									
										<button type="submit" class="header_search_button trans_300" value="Submit"><img src="/<?php echo THEMES_DIR;?>OneTech/images/search.png" alt=""></button>
									</form>
								</div>
							</div>
						</div>
					</div>

					<!-- Wishlist -->
					<div class="col-lg-4 col-9 order-lg-3 order-2 text-lg-left text-right">
						<div class="wishlist_cart d-flex flex-row align-items-center justify-content-end">
							<div class="wishlist d-flex flex-row align-items-center justify-content-end">
								<div class="wishlist_icon"><img src="/<?php echo THEMES_DIR;?>OneTech/images/heart.png" alt=""></div>
								<div class="wishlist_content">
									<div class="wishlist_text"><a href="/wishlist">İstek Listesi</a></div>
									<div class="wishlist_count">0</div>
								</div>
							</div>

							<!-- Cart -->
							<div class="cart">
								<div class="cart_container d-flex flex-row align-items-center justify-content-end">
									<div class="cart_icon">
										<img src="/<?php echo THEMES_DIR;?>OneTech/images/cart.png" alt="">
										<div class="cart_count"><span><?php echo Cart::totalItems(); ?></span></div>
									</div>
									<div class="cart_content">
										<div class="cart_text"><a href="/sepet">Sepetim</a></div>
										<div class="cart_price"><?php echo price(Cart::totalPrices()); ?> TL</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<?php import::view(TEMA.'MainNavigation'); ?>
		</header>
	
	<!-- Banner -->


