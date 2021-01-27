<?php  namespace Project\Controllers;
use Import,DB,Method,Session; 
class Setting extends Controller{
	
	function main(){
		if (Method::post()) {$this->settings_model->crud(Method::post());}
		//Import::view('setting/index');
	}
}