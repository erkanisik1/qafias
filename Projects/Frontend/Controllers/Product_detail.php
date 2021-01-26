<?php namespace Project\Controllers;
use Import,Cart,Cookie,URI; 

	class Product_detail extends Controller{
		function main(){
			$par = URI::get('product_detail');
			$id = explode('-', $par);
			
			$id1 = $id['0'];
			define('product_id',$id['0']);
			view::id($id1);
		}
	}