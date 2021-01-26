<?php  
	class Kategori_model extends model{
		
		function liste($post){
			$param = explode('-',$post);
			$katid = $param['0'];
			$ara = DB::select('id')->where('parentID', $katid)->get('products_category')->result();	
			if($ara){
				foreach ($ara as $key) {$a .= $key->id.',';}
					$p = rtrim($a,",");
				}else{$p = $katid;}
			return DB::query('SELECT * FROM products WHERE category IN('.$p.')')->result();
		}

		function magaza_urun_liste($data){
			$magaza_id = DB::select('magaza_id')->where('magaza_seo', $data)->get('magaza')->value();
			return DB::where('magazaID', $magaza_id)->get('urunler')->result(); 
		}

		function magaza_urun_logo($data){
			return DB::select('logo')->where('magaza_seo', $data)->get('magaza')->value();
		}
	}