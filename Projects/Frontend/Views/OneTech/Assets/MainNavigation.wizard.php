<nav class="main_nav">
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="main_nav_content d-flex flex-row">
					<div class="cat_menu_container">
						<div class="cat_menu_title d-flex flex-row align-items-center justify-content-start">
							<div class="cat_burger">
								<span></span><span></span><span></span>
							</div>
							<div class="cat_menu_text">KATEGORİLER</div>
						</div>

						<ul class="cat_menu">
							@foreach (menu() as $key)

							@if (count(category_result($key->id)) > 0)
							{[$p = '<i class="fas fa-chevron-right ml-auto"></i>';]}
							@else
							{[$p='';]}
							@endif
							
							<li class="hassubs"><a href="/category/{[ echo $key->id.'-'.$key->seo; ]}">{[ echo $key->name.$p; ]}</a>
								<ul>
									@foreach (menu($key->id) as $key2) 
									@if (count(category_result($key2->id)) > 0) 
									{[$p = '<i class="fas fa-chevron-right ml-auto"></i>';]}
									@else
									{[$p = '';]}
									@endif
									
									<li class="hassubs"><a href="/category/{[ echo $key2->id.'-'.$key2->seo; ]}">{[ echo $key2->name.$p; ]}</a>
										

									</li>
									@endforeach
								</ul>
								
								
							</li>
							@endforeach
						</ul>
						
					</div>

					<!-- Main Nav Menu -->

					<div class="main_nav_menu ml-auto">
						<ul class="standard_dropdown main_nav_dropdown">
							<li><a href="{{URL::base()}}">Anasayfa<i class="fas fa-chevron-down"></i></a></li>
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