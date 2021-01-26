<?php namespace Project\Controllers;
use Import,Cart; 

	class Buy extends Controller
	{
		
		function main($par = ''){
			$data['sip'] = $this->satis->siparislerim();
			import::view(TEMA.'sepet',$data);
		}

		function order(){import::view(TEMA.'new_sales_order');}
	}
