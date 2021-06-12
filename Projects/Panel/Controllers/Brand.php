<?php namespace Project\Controllers;

use Import,DB,Method,Session;

	class Brand extends Controller{
		
		function main(){
			$brandList = DB::brands()->result();
			view::brandList($brandList);
		}

		
	}