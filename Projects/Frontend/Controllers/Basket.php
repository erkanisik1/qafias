<?php namespace Project\Controllers;

use Iyzico,User; 

class Basket extends Controller{
	
	function main(){

		$iyzico = new Iyzico();

		$payment = $iyzico->setForm([
			'conversationId' 	=> '1234545',
			'price' 			=> 100.0,
			'paidPrice'			=> 110.0,
			'basketId' 			=> 'hh112'
		])
		->setBuyer([
			'id' => '4445',
			'name' => 'Mahmut',
			'surname' => 'Tuncer',
			'phone' => '05424802280',
			'email' => 'deneme@deneme.com',
			'tcno' => '12345678901',
			'adres' => 'denem mah. osrma.sok no22:5',
			'ip' => User::ip(),
			'sehir' => 'istanbul',
			'ulke' => 'Türkiye',
			
		])
		->setKargo([
			'nameSurname' => 'Mahmut Tuncer',
			'sehir' => 'istanbul',
			'ulke' => 'Türkiye',
			'adres' => 'denem mah. osrma.sok no22:5'
		])
		->setFatura([
			'nameSurname' => 'Mahmut Tuncer',
			'sehir' => 'istanbul',
			'ulke' => 'Türkiye',
			'adres' => 'denem mah. osrma.sok no22:5'			
		])
		->setSepet([
			[
				'id' => '44557',
				'urunAdi' => 'tahta masa',
				'kategori' => 'ev eşyaları',
				'fiyati' => 50.0
			],
			[
				'id' => '44554',
				'urunAdi' => 'cam masa',
				'kategori' => 'ev eşyaları',
				'fiyati' => 50.0
			]
		])
		->paymentForm();



		
		
		view::paymentContent($payment->getCheckoutFormContent())
		->paymentStatus($payment->getStatus());

	}


	function odemeDurumu(){
		echo '<pre>'.$_REQUEST.'</pre>';
	}
}

?>

