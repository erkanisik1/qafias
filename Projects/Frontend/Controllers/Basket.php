<?php namespace Project\Controllers;
use Import,Cart; 

class Basket extends Controller{
	
	function main(){
		output(Cart::selectItems());
		echo 'toplam ürün: '.cart::totalItems().'<br>';
		echo 'toplam fiyat: '.cart::totalPrices();
		//echo cart::totalItems();
		//echo cart::totalPrices();
		//cart::deleteAll();
	}
}

?>