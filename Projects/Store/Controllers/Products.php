<?php namespace Project\Controllers;
use Import,DB,Method, URI,Session;  
	
	class Products extends Controller{
		
		function main(){
			$category = '';
			$storeId = Session::select('STOREID');
			$storeKategori = DB::select('category')->groupBy('category')->where('store_id', $storeId)->products()->result();		
			if (Method::post()) {
				$category = Method::post('kategori');
			}
			View::storeKategori($storeKategori)->kategori($category);


		}

		function new(){
			if(Method::post()){$this->product_model->new(Method::post());}
		}



		function edit(){

			if(Method::post()){$this->product_model->update(Method::post());}
			
			view::id(URI::get('edit')); 
		}

		function delete(){
			$id = Uri::get('delete');
			$resim = DB::where('product_id',$id)->products_img()->result();
			foreach ($resim as $key ) {
			 	unlink($key->link);
			}
			DB::where('id', $id)->delete('products');
			DB::where('product_id', $id)->delete('product_img');
			redirect('products');
		}

	
		
	}