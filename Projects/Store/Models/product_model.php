<?php 
	
	class Product_model extends Model{
		
		function new($post){
			DB::insert('products',[
				'store_id' 			=> Session::select('STOREID'),
				'title' 			=> $post['title'],
				'title_seo' 		=> seo($post['title']),
				'keyword'			=> $post['keyword'], 
				'description'		=> $post['description'],
				'subtitle' 			=> $post['subtitle'],
				'category' 			=> $post['category'],
				'content' 			=> $post['content'],
				'price' 			=> $post['price'],
				'stock_quantity'	=> $post['stock_quantity'],
				'stock_code' 		=> $post['stock_code'],
				'brand'				=> $post['brand'],
				'payment_method'	=> $post['payment_method'],
				'cargo_payment' 	=> $post['cargo_payment'],
				'cargo_company' 	=> $post['cargo_company'],
				'hit'				=> '1',
				'stokKalan'			=> 	$post['stock_quantity'],	
				
			]);

			if(DB::affectedRows()){

				$insertid = DB::insertID();
				$target = 'upload/products/'.Session::select('storeid');

				Upload::settings([
			    'encode'     => 'md5',
			    'extensions' => 'jpg|png|webp|gif',
			    'maxsize'    => 256000,
				])
				->target($target)
				->start('images');

			foreach (Upload::info()->path as $key ) {
				$image = trim($key);
				if($image){DB::insert('products_img',[
					'product_id'	=> $insertid,
					'link' 			=> $image
					]);
				}
			}

			

			if (isset($post['new_label'])) {
				$a = '';$update = '';
				foreach ($post['new_label'] as $key ) { 
					$a = (int)$a + 1;
					DB::insert('secenek',[
						'label' 	=> $key,
						'secenek'	=> $post['new_sec'][$a-1],
						'urunID'	=> $insertid
					]);
					#$update .= $key.'-'.$post['new_sec'][$a-1].'-'.$post['id'];
					#echo $update.'<br>';
				}
			}
			redirect('products');
				}else{
					echo DB::error();
				}
			
			}


		function update($post){
		
			DB::where('id', $post['id'])->update('products',[
				'title' 			=> $post['title'],
				'title_seo' 		=> seo($post['title']),
				'keyword'			=> $post['keyword'], 
				'description'		=> $post['description'],
				'subtitle' 			=> $post['subtitle'],
				'category' 			=> $post['category'],
				'content' 			=> $post['content'],
				'price' 			=> $post['price'],
				'stock_quantity'	=> $post['stock_quantity'],
				'stock_code' 		=> $post['stock_code'],
				'brand'				=> $post['brand'],
				'cargo_payment' 	=> $post['cargo_payment'],
				'cargo_company' 	=> $post['cargo_company'],			
			]);

			/* seçenekleri güncellemede kullanılan bölüm */
			if (isset($post['label'])) {
				$a = '';$update = '';
				foreach ($post['label'] as $key ) { 
					$a = (int)$a + 1;
					DB::where('id',$post['secid'][$a-1])->update('secenek',[
						'label' => $key,
						'secenek'	=> $post['secenek'][$a-1]
					]);
					#$update .= $key.'-'.$post['secenek'][$a-1].'-'.$post['secid'][$a-1];
					#echo $update.'<br>';
				}
			}
			/* /seçenekleri güncellemede kullanılan bölüm */
			/* Yeni Seçenek eklendiğinde çalışan bölüm */
			if (isset($post['new_label'])) {
				$a = '';$update = '';
				foreach ($post['new_label'] as $key ) { 
					$a = (int)$a + 1;
				
					DB::insert('secenek',[
						'label' 	=> $key,
						'secenek'	=> $post['new_sec'][$a-1],
						'urunID'	=> $post['id']
					]);
					#$update .= $key.'-'.$post['new_sec'][$a-1].'-'.$post['id'];
					#echo $update.'<br>';
				}
			}
			/* Yeni Seçenek eklendiğinde çalışan bölüm */

			/*yeni resim yükleme alanı*/
			

			if(!$_FILES['images']['name']['0'] == ''){
				$target = 'upload/products/'.Session::select('STOREID');

				Upload::settings([
			    'extensions' => 'jpg|png|webp|gif',
			    'maxsize'    => 1048576,
				])
				->target($target)
				->start('images');

				foreach (Upload::info()->path as $key ) {
					$image = trim($key);
					if($image){
						DB::insert('products_img',[
						'product_id'	=> $post['id'],
						'link' 			=> $image
						]);
					}

				}
			}				

			if (!DB::error()) {
				redirect('products');
			}

			

			}




			// mağaza id sine göre Ürünleri listeliyoruz
		function urunlistesi(){
			$magazaID = Session::select('magaza_id');
			return DB::where('store_id', $magazaID)->get('products')->result();
		}
		
		function urunduzenle($post){return DB::where('id',$post)->get('products')->row();}
		function resimler($post){return DB::where('product_id',$post)->get('products_img')->result();}
		function sipliste(){return DB::where('magazaID',Session::select('magaza_id'))->get('sepet')->result();}
		 


	}// class sonu