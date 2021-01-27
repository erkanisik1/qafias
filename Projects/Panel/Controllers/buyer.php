<?php namespace Project\Controllers;

use Import,DB,Method,Session; 

	class Buyer extends Controller{
		
		function main(){
			$liste = $this->mstr->liste();
			view::liste($liste);
		}

		function sil($id){
			DB::where('musteri_id', $id)->delete('musteri');
			if(DB::affectedRows()){
				redirect(baseUrl().'yonetim/musteri');
			}
		}
	}