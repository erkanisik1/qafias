<?php namespace Project\Controllers;
use Import,Cart; 

	class Detay extends Controller{
		function main($id=''){
			$id = explode('-', $id);
			$data['detay'] = $this->anasayfa->urundetay($id['0']);
			$data['resimler'] = $this->anasayfa->resimler($id['0']);
			Import::view(TEMA.'detay',$data);
		}
		
	}