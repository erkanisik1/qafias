<?php namespace Project\Controllers;
use Import,DB,Session,Method, URI;  
	class Brands extends Controller{
		
		function main(){
			
		}

		function new(){
			if (method::post()) {
				$this->brands_model->new(method::post());
			}

		}

		function delete(){
			$id = Uri::get('delete');
			
			DB::where('id', $id)->delete('brands');
			redirect('brands');

		}


	}