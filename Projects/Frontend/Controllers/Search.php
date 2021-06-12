<?php namespace Project\Controllers;
use Import,Cart,Method, DB; 

class Search extends Controller{

	function main(){ 
		$search = Method::get('q');

		$s = DB::whereLike('title',$search)->products()->result();

		//output($s);
		

		view::search($s)->aranan($search);
	}


	    
	
	
}