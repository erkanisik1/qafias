<?php namespace Project\Controllers;
use Import,Cart,URI; 

	class Product extends Controller{
		
		function main(){
			
		}

		function detail(){
			//define('product_id', $id);
			$id 		= URI::get('detail');
			$category 	= products_category(product_detail($id)->category)->name;
			$title 		= product_detail($id)->title;
			$content 	= product_detail($id)->content;
			$price		= product_detail($id)->price;
			$cat_id 	= product_detail($id)->category;

			$cargo 		= product_detail($id)->cargo_payment == 2?'Ücretsiz Kargo':'Alıcı Kargoyu Kapıda Öder';
			if (product_detail($id)->cargo_payment == 1) {
				$kargo = 'Satıcı Öder (Ücretsiz Kargo)';
			}else{
				$kargo = 'Alıcı Öder';
			}

			view::category($category)
				->id(URI::get('detail'))
				->title($title)
				->content($content)
				->cargo($cargo)
				->kargo($kargo)
				->price($price)
				->catId($cat_id);
		}

		function category(){
			$id = explode('-', URI::get('category'))['0'];

			$cat_id = subcat($id).$id;
			view::cat_id($cat_id); 
		}
	}