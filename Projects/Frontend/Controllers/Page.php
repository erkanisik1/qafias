<?php namespace Project\Controllers;
use Import,Cart; 

class Page extends Controller{
	
	function main($link){
	
		$data['yazi'] = $link;

		Import::view(TEMA.'page',$data);


		
		
	} 
}
 