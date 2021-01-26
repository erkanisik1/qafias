<?php namespace Project\Controllers;
use Import,Cart;
class Category extends Controller{
	
	function main($par){

		$par = explode('-', $par);
		//$data['listele'] = $this->kategori_model->liste($par['0']);
		//$data['cat_id'] = $par['0'];
		 $cat_id = subcat($par['0']).$par['0'];

		//echo $data['cat_id'];
	 	view::cat_id($cat_id); 
	}
}