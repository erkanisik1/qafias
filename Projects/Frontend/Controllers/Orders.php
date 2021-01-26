<?php namespace Project\Controllers;
use Import,Cart; 

class Orders extends Controller{
	
	function main()
	{
		Import::view(TEMA.'orders_view');
	}
}