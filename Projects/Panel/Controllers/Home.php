<?php namespace Project\Controllers;
	use URL,Method,Session;  
	class Home extends Controller{	

		  
		function main() {	
			 if (method::post()) {
			 	$this->yonetim->login(method::post());
			 }

			$data = $this->store_model->magazaonay();
	   		$magazaonaysayisi = COUNT($data);
	   		View::magazaonaysayisi($magazaonaysayisi)->data($data);
			
	   		
		}
	}
