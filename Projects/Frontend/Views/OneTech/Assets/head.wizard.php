<title>{{settings('site_name')}}</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="{[ echo settings('description'); ]}">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="yandex-verification" content="9a59a9734c566962" />
	<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css">
	<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
	<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
@if (CURRENT_CONTROLLER == 'Home')
	<link rel="stylesheet" type="text/css" href="styles/home.css">
	<link rel="stylesheet" type="text/css" href="plugins/slick-1.8.0/slick.css">
	<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
	<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
	<link rel="stylesheet" type="text/css" href="styles/responsive.css">
@elseif (CURRENT_CONTROLLER == 'Category')	
	<link rel="stylesheet" type="text/css" href="plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="styles/shop_styles.css">
	<link rel="stylesheet" type="text/css" href="styles/shop_responsive.css">
@elseif (CURRENT_CONTROLLER == 'Product')	
	<link rel="stylesheet" type="text/css" href="styles/product_styles.css">
	<link rel="stylesheet" type="text/css" href="styles/product_responsive.css">
	<link rel="stylesheet" type="text/css" href="styles/xzoom.css">
@elseif (CURRENT_CONTROLLER == 'Search')
	<link rel="stylesheet" type="text/css" href="styles/shop_styles.css">
	<link rel="stylesheet" type="text/css" href="styles/shop_responsive.css">
@endif