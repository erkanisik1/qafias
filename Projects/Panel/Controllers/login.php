<?php namespace Project\Controllers;
use Method,Session;  


	
	class Login extends Controller{
		
		function main(){
			if(Method::post()){$this->yonetim->login(Method::post());}

			
		}

		function cikis(){
			Session::deleteAll();
			redirect('panel');
		}
	}