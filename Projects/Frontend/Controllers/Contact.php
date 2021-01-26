<?php namespace Project\Controllers;
use Import,Cart,Method; 
	class Contact extends Controller{
		
		public function main(){		
		if(Method::post()){
			$this->Anasayfa->iletisim(Method::post());
		}	
			//IMPORT::view(TEMA.'contact');
		}
	}