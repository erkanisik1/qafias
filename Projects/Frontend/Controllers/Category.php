<?php namespace Project\Controllers;
use Import,Cart;
class Category extends Controller{
	
	function main($par){

		$id = explode('-', $par)['0'];
		//$data['listele'] = $this->kategori_model->liste($par['0']);
		//$data['cat_id'] = $par['0'];
		 $cat_id = subcat($id).$id;
		 $category_name = category($id)->name;
		 $productCount 	= count(category_list_products($cat_id)); 

		//echo $data['cat_id'];


	 	view::cat_id($cat_id)
	 		->category_name($category_name)
	 		->productCount($productCount); 
	}
}