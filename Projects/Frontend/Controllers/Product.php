<?php namespace Project\Controllers;
use Import,Cart,URI,Method,Arrays; 

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

			if (method::post()) {
				
				$data = array();
			
			foreach (Method::post() as $key => $value) {
			$data[]= $key .'=>'. $value;	
			}
			
			
			output($data);
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

		function basketadd(){
			$basketSecret = method::post('basketSecret');
			$urunId = method::post('urunID');
			$adet = method::post('adet');
			
		
			//$data = explode('/', method::post('veri'));
			//$rnd = unique();
		
/*
			$json = '{';
			foreach (method::post() as $key => $value) {

				
				$json .= '"'.$key.'":"'.$value.'",';
				
			}
$json .= '}';
			echo $json;
*/
			//echo method::post('basketSecret');
			//output(method::post());
			/*
			cart::insertItem([
				'product'       => product_detail($data['1'])->title,
				'price'         => product_detail($data['1'])->price,
				'quantity'      => $data['0'],
				'serial-number' => $rnd,
				'userid'		=> Session::select('userid'),
				'json'			=> $json,
			]);
			
			echo Cart::totalItems().'/'.Cart::totalPrices();
			*/
		
		}

	}