<?php 


 class Satis extends model{
 	
 	function siparisekle($data){
 		$id = explode('-', $data);
 		$getir = DB::where('urunID',$id['0'])->get('urunler')->row();

 	/*	$kaydet = DB::insert('sepet',[
	 		'urunID' => $getir->urunID,
	  		'magazaID' => $getir->magazaID,
			'baslik' => $getir->baslik,
			'baslikseo' => $getir->baslikseo,
			'altbaslik' => $getir->altbaslik,
			'kategori' => $getir->kategori,
			'aciklama' => $getir->aciklama,
			'beden' => $getir->beden,
			'renk' => $getir->renk,
			'marka' => $getir->marka,
			'ebat' => $getir->ebat,
			'fiyat' => $getir->fiyat,
			'musteriID' => Session::select('userid'),
			'adet' => '1'
			]);

 		//redirect(baseURL().'satin_al');
 		*/
 	}

 	function siparislerim(){
 			return	DB::where('user_id',Session::select('userid'))->get('basket')->result();
 	}

 	function siparisi_tamamla($post){
 		DB::where('sepetID',$post)->update('sepet',['musteri_onay' => '1',]);
 			return	DB::where('musteriID',Session::select('userid'), 'and')->where('sepetID',$post)->get('sepet')->row();
 	}
 	
 	function sipekle($post){
 		$getir = DB::where('id',$post['id'])->get('products')->row();	
			
				
		 	DB::insert('basket',[
				'product_id'	=> $getir->id,
				'price' 		=> $getir->price,
				'user_id' 		=> Session::select('userid'),
				'quantity' 		=> $post['quantity']
			]);
			//echo DB::error();
			
 	}

 	 	function no_user_order1($post){

 			$getir = DB::where('id',$post['id'])->get('products')->row();	
			
			$rnd = date('Ymdhis').rand();	
		 	
		 	DB::insert('no_user_basket',[
				'product_id'	=> $getir->id,
				'price' 		=> $getir->price,
				'quantity' 		=> $post['quantity'],
				'unique_id'		=> $rnd
			]);

			if (DB::error()) {
				echo DB::error();
			}else{
				Cookie::insert('unique_order',$rnd);
				echo DB::insertID().' sipariş başarılı';
			}
			//echo DB::error();
			
 	}

 }