<?php namespace Project\Controllers;
use Import,DB,Method, URI;  
	
	class Products extends Controller{
		
		function main(){}

		function new(){
			if(Method::post()){$this->product_model->new(Method::post());}
		}



		function edit(){

			if(Method::post()){$this->product_model->update(Method::post());}
			
			view::id(URI::get('edit')); 
		}

		function delete($id){
			DB::where('id', $id)->delete('products');
			DB::where('product_id', $id)->delete('product_img');
			redirect('products');
		}

	
		
	}