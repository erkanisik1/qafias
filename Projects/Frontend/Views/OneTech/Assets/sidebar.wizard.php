@if(empty($aranan))
	{[$aranan = '';]}
@else
	{[$aranan = $aranan.'&';]}
@endif



<div class="col-lg-3">
	<div class="shop_sidebar">
		
		<div class="sidebar_section">
			<div class="sidebar_subtitle color_subtitle">RENK</div>
			<ul class="colors_list">
				<li class="color"><a href="/search/?q={{$aranan}}renk=beyaz" title="Beyaz" style="background: #fffff; border:1px solid #e1e1e1;"  ></a></li>
				<li class="color"><a href="/search/?q={{$aranan}}renk=siyah" title="Siyah" style="background: #000000;"></a></li>
				<li class="color"><a href="/search/?q={{$aranan}}renk=gri" title="gri" style="background: #999999;"></a></li>
				<li class="color"><a href="/search/?q={{$aranan}}renk=mavi" title="Mavi" style="background: #0e8ce4;"></a></li>
				<li class="color"><a href="/search/?q={{$aranan}}renk=kırmızı" title="Kırmızı" style="background: #df3b3b;"></a></li>
			</ul>
		</div>
	</div>
</div>