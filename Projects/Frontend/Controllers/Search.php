<?php namespace Project\Controllers;
use Import,Cart,Method; 

class Search extends Controller{

	function main(){ 
		$search = Method::post('search');
		view::search($search);
	}


	    
	
	
}