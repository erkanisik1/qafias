<?php namespace Project\Controllers;
use Import,DB,method,Session;  
	class Login extends Controller{
		
		function main(){
			if (Method::post()) {$cntr = $this->store_model->login(Method::post());}
			//Import::view('login');
		}

		function cikis(){
			Session::deleteAll();
			redirect('store');
		}
	}