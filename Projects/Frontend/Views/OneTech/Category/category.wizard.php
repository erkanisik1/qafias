	<div class="shop_sidebar">
						<div class="sidebar_section">
							<div class="sidebar_title">KATEGORİLER</div>
							<ul class="sidebar_categories">
								@foreach (menu($cat_id) as $key)
									<li><a href="/category/{[ echo $key->id.'-'.$key->seo; ]}">{[ echo $key->name ]}</a></li>
								@endforeach
							</ul>
						</div>
						<div class="sidebar_section filter_by_section">
							<div class="sidebar_title">Filter By</div>
							
						</div>
						<div class="sidebar_section">
							<div class="sidebar_subtitle color_subtitle">RENK</div>
							<ul class="colors_list">
								<li class="color"><a href="#" style="background: #b19c83;"></a></li>
								<li class="color"><a href="#" style="background: #000000;"></a></li>
								<li class="color"><a href="#" style="background: #999999;"></a></li>
								<li class="color"><a href="#" style="background: #0e8ce4;"></a></li>
								<li class="color"><a href="#" style="background: #df3b3b;"></a></li>
								<li class="color"><a href="#" style="background: #ffffff; border: solid 1px #e1e1e1;"></a></li>
							</ul>
						</div>
						<div class="sidebar_section">
							<div class="sidebar_subtitle brands_subtitle">MARKALAR</div>
							<ul class="brands_list">
								@foreach (brand() as $key )
									<li class="brand"><a href="#">{[ echo $key->brand; ]}</a></li>
								@endforeach
								
								
							</ul>
						</div>
					</div>