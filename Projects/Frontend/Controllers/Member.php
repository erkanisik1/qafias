<?php namespace Project\Controllers;
use Import,Cart; 
	class Member extends Controller{
		
		function main()
		{
			$data['sip'] = $this->satis->siparislerim();
			
			Import::view(TEMA.'uye',$data);
		}

		function alisverisi_tamamla($dt){

			$id =  explode('-', $dt);
			$data['sip'] = $this->satis->siparisi_tamamla($id['0']);
			
			Import::view(TEMA.'alisverisi_tamamla',$data); 
		}

		function bilgilerim(){
		
			$data['bilgiler'] = $this->uyelik->bilgi(Session::select('userid')); 
			import::view(TEMA.'bilgilerim',$data);
		}
	}