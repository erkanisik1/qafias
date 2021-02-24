
	<!-- Footer -->

	<footer class="footer bg-white mt-2" style="border-top: 1px solid #ccc">
		<div class="container">
			<div class="row">

				<div class="col-lg-3 footer_col">
					<div class="footer_column footer_contact">
						<div class="logo_container">
							<div class="logo"><a href="#">{[ echo settings('site_name') ]}</a></div>
						</div>
						<div class="footer_title">Sorunuz mu var? 7/24 Bizi Arayın</div>
						<div class="footer_phone">{[ echo settings('telephone') ]}</div>
						<div class="footer_contact_text">
							<p>{[ echo settings('address') ]}</p>
							
						</div>
					<!-- 
						<div class="footer_social">
							<ul>
								<li><a href=""><i class="fab fa-facebook-f"></i></a></li>
								<li><a href="#"><i class="fab fa-twitter"></i></a></li>
								<li><a href="#"><i class="fab fa-youtube"></i></a></li>
								<li><a href="#"><i class="fab fa-google"></i></a></li>
								<li><a href="#"><i class="fab fa-vimeo-v"></i></a></li>
							</ul>
						</div>
						 -->
					</div>
				</div>

				

				<div class="col-lg-2">
					<div class="footer_column">
						<div class="footer_title">Kurumsal</div>
						<ul class="footer_list">
							<li><a href="/page/hakkimizda">Hakkımızda</a></li>
							<li><a href="/contac">İletişim</a></li>
							
						</ul>
					</div>
				</div>

					<div class="col-lg-2">
					<div class="footer_column">
						<div class="footer_title">İlkelerimiz</div>
						<ul class="footer_list">
							@foreach (pageLink() as $key )
								<li><a href="/page/{{$key->title_seo}}">{{$key->title}}</a></li>
							@endforeach
							<!-- 
							<li><a href="/page">Kullanım ve Üyelik Şartları</a></li>
							<li><a href="/page">Gizlilik Politikası</a></li>
							<li><a href="/page">Mesafeli̇ Satiş Sözleşmesi̇</a></li>
							<li><a href="/page">Geri Ödeme Politikası</a></li>
							<li><a href="/page">Ödeme Sistemi</a></li>
							 -->
						</ul>
					</div>
				</div>

				<div class="col-lg-2">
					<div class="footer_column">
						<div class="footer_title">Müşteri Hizmetleri</div>
						<ul class="footer_list">
							<li><a href="/user">Hesabım</a></li>
							<li><a href="/user">Sipariş Takibi</a></li>
							<li><a href="/user">Takip Listem</a></li>
							<li><a href="/user">Değişim / İade</a></li>
							<li><a href="/user">Ürün Desteği</a></li>
						</ul>
					</div>
				</div>

			</div>
		</div>
	</footer>

	<!-- Copyright -->

	<div class="copyright">
		<div class="container">
			<div class="row">
				<div class="col">
					
					<div class="copyright_container d-flex flex-sm-row flex-column align-items-center justify-content-start">
						<div class="copyright_content">
							Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved 
						</div>
						<div class="logos ml-sm-auto">
							<ul class="logos_list">
								<li><a href="#"><img src="images/logos_1.png" alt=""></a></li>
								<li><a href="#"><img src="images/logos_2.png" alt=""></a></li>
								<li><a href="#"><img src="images/logos_3.png" alt=""></a></li>
								<li><a href="#"><img src="images/logos_4.png" alt=""></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<script src="js/jquery-3.3.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>



@if (CURRENT_CONTROLLER == 'Home')
	<script src="plugins/slick-1.8.0/slick.js"></script>
	<script src="js/custom.js"></script>	
@elseif (CURRENT_CONTROLLER == 'Category')
	<script src="plugins/Isotope/isotope.pkgd.min.js"></script>
	<script src="plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
	<script src="plugins/parallax-js-master/parallax.min.js"></script>
	<script src="js/shop_custom.js"></script>
@elseif (CURRENT_CONTROLLER == 'Product')	
	<script src="js/product_custom.js"></script>
	<script src="js/xzoom.min.js"></script>
	<script src="js/zoom.js"></script>
@endif

<script src="js/my.js"></script>
<!-- 
<script src="js/zoom.js" i></script>
 --> 