<?php namespace Project\Controllers;
use Import,Cart; 

class Store extends Controller{
	
	function main($param = ""){
		$data['listele'] = $this->kategori_model->magaza_urun_liste($param);
		$data['logo'] = $this->kategori_model->magaza_urun_logo($param);
		Import::view(TEMA.'magaza_urun_liste',$data); 

	}

	function kayit(){
		if (method::post()) {
			$this->store_model->kayit(method::post());
		}
		
		import::view(TEMA.'store/magazakayit');
	}




}

