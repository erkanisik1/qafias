<div class="col-lg-4 col-9 order-lg-3 order-2 text-lg-left text-right">
	<div class="wishlist_cart d-flex flex-row align-items-center justify-content-end">
		<div class="wishlist d-flex flex-row align-items-center justify-content-end">
			<div class="wishlist_icon"><img src="images/heart.png" alt=""></div>
			<div class="wishlist_content">
				<div class="wishlist_text"><a href="/user/wishlist">İstek Listesi</a></div>
				<div class="wishlist_count">0</div>
			</div>
		</div>

		<!-- Cart -->
		<div class="cart">
			<div class="cart_container d-flex flex-row align-items-center justify-content-end">
				<div class="cart_icon">
					<img src="images/cart.png" alt="">
					<div class="cart_count"><span id="count">{{Cart::totalItems()}}</span></div>
				</div>
				<div class="cart_content">
					<div class="cart_text"><a href="/sepet">Sepetim</a></div>
					<div class="cart_price">{{price(Cart::totalPrices())}} TL</div>
				</div>
			</div>
		</div>
	</div>
</div>	
