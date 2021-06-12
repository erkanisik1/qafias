<?php namespace Project\Controllers;
use Cart;

class Sepet extends Controller{
	
	function main(){
		$sip = $this->satis->siparislerim();
		$sepet = Cart::selectItems();
		view::sip($sip)->sepet($sepet);
	}
}