		<!-- Main Navigation -->

		<nav class="main_nav">
			<div class="container">
				<div class="row">
					<div class="col">
						
						<div class="main_nav_content d-flex flex-row">

							<!-- Categories Menu -->

							<div class="cat_menu_container">
								<div class="cat_menu_title d-flex flex-row align-items-center justify-content-start">
									<div class="cat_burger"><span></span><span></span><span></span></div>
									<div class="cat_menu_text">KATEGORİLER</div>
								</div>

								
								<ul class="cat_menu">


									<?php  foreach (menu() as $key):

										if (count(category_result($key->id)) > 0) {
											$p = '<i class="fas fa-chevron-right ml-auto"></i>';
										}else{
											$p='';
										}
									 ?>
										<li class="hassubs"><a href="/category/<?php echo $key->id.'-'.$key->seo; ?>"><?php echo $key->name.$p; ?></a>
											<ul>
												<?php foreach (menu($key->id) as $key2): 
													if (count(category_result($key2->id)) > 0) {
														$p = '<i class="fas fa-chevron-right ml-auto"></i>';
													}else{$p = '';}
												?>
												<li class="hassubs"><a href="/category/<?php echo $key2->id.'-'.$key2->seo; ?>"><?php echo $key2->name.$p; ?></a>
													<ul>
														<?php foreach (menu($key2->id) as $key2): 
															if (count(category_result($key2->id)) > 0) {
																$p = '<i class="fas fa-chevron-right ml-auto"></i>';
															}else{$p = '';}
														?>
														<li class="hassubs"><a href="/category/<?php echo $key2->id.'-'.$key2->seo; ?>"><?php echo $key2->name.$p; ?></a></li>
													<?php endforeach ?>
													</ul>



												</li>
											<?php endforeach ?>
											</ul>
											
										
										</li>
									<?php endforeach ?>
									</ul>
										<!-- 
									<li><a href="#">Computers & Laptops <i class="fas fa-chevron-right ml-auto"></i></a></li>
									<li><a href="#">Cameras & Photos<i class="fas fa-chevron-right"></i></a></li>
									<li class="hassubs">
										<a href="#">Hardware<i class="fas fa-chevron-right"></i></a>
										<ul>
											<li class="hassubs">
												<a href="#">Menu Item<i class="fas fa-chevron-right"></i></a>
												<ul>
													<li><a href="#">Menu Item<i class="fas fa-chevron-right"></i></a></li>
													<li><a href="#">Menu Item<i class="fas fa-chevron-right"></i></a></li>
													<li><a href="#">Menu Item<i class="fas fa-chevron-right"></i></a></li>
													<li><a href="#">Menu Item<i class="fas fa-chevron-right"></i></a></li>
												</ul>
											</li>
											<li><a href="#">Menu Item<i class="fas fa-chevron-right"></i></a></li>
											<li><a href="#">Menu Item<i class="fas fa-chevron-right"></i></a></li>
											<li><a href="#">Menu Item<i class="fas fa-chevron-right"></i></a></li>
										</ul>
									</li>
									<li><a href="#">Smartphones & Tablets<i class="fas fa-chevron-right"></i></a></li>
									<li><a href="#">TV & Audio<i class="fas fa-chevron-right"></i></a></li>
									<li><a href="#">Gadgets<i class="fas fa-chevron-right"></i></a></li>
									<li><a href="#">Car Electronics<i class="fas fa-chevron-right"></i></a></li>
									<li><a href="#">Video Games & Consoles<i class="fas fa-chevron-right"></i></a></li>
									<li><a href="#">Accessories<i class="fas fa-chevron-right"></i></a></li>

								</ul>
									 -->
							</div>

							<!-- Main Nav Menu -->

							<div class="main_nav_menu ml-auto">
								<ul class="standard_dropdown main_nav_dropdown">
									<li><a href="/home454">Anasayfa<i class="fas fa-chevron-down"></i></a></li>
									<li><a href="/contact">İletişim<i class="fas fa-chevron-down"></i></a></li>
								</ul>
							</div>

							<!-- Menu Trigger -->

							<div class="menu_trigger_container ml-auto">
								<div class="menu_trigger d-flex flex-row align-items-center justify-content-end">
									<div class="menu_burger">
										<div class="menu_trigger_text">menu</div>
										<div class="cat_burger menu_burger_inner"><span></span><span></span><span></span></div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</nav>
		
		<!-- Menu -->
