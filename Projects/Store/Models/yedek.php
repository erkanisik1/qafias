/*
			$d = $post['secenek'];
			if($d){$secenek = '1';}else{$secenek = '0';}
			$b = 0;
			foreach ($d['sec'] as $der ) {@$a[] .= $der;}				
			foreach ($d['label'] as $key ) {$b = $b + 1;$c[] = $key.'-'.$a[$b-1];}
*/

			if(!DB::error()){

				$insertid = DB::insertID();

				Upload::settings([
			    'encode'     => 'md5',
			    'extensions' => 'jpg|png|webp',
			    'maxsize'    => 256000,
				])
				->target('upload/store_id-'.Session::select('store_id'))
				->start('images');

			foreach (Upload::info()->path as $key ) {
				$image = trim($key);
				if($image){DB::insert('products_img',[
					'products_id'	=> $insertid,
					'link' 			=> $image
				]);
				}
			}


			/* ürün seçeneklerinin kaydediğildiği bölüm */
			/*
			foreach ($c as $key ) {
				$d = explode('-', $key);
				
				$label = $d['0'];
				$option = $d['1'];

				if ($label) {
					DB::insert('secenek',[
						'urunID' => $insertid,
						'label' => $label,
						'secenek' => $option,
					]);			
				}

			*/
			}else{
				echo DB::error();
				
			}
			---------------------------------
			
		function urundznl($post){
			$magazaID = Session::select('magaza_id');
			$baslikseo = Myfunc::seo($post['baslik']);

			DB::where('id', $post['urunid'])->update('products',[
			    'store_id' => $magazaID,
				'baslik' => $post['baslik'],
				'baslikseo' =>$baslikseo,
				'keyword'	=> $post['keyword'],
				'description' => $post['description'],
				'altbaslik' => $post['altbaslik'],
				'kategori' => $post['kategori'],
				'aciklama' => $post['aciklama'],
				'fiyat' => $post['fiyat'],
				'stokAdet' => $post['stokadet'],
				'stokKodu' => $post['stokkodu']
			]);

			if(DB::affectedRows()){

				$insertid = $post['urunid'];
				Upload::settings([
			    'encode'     => 'md5',
			    'extensions' => 'jpg|png',
			    'maxsize'    => 256000,
			])
			->target('upload/magaza_id-'.Session::select('magaza_id'))
			->start('resim');
				
			foreach (Upload::info()->path as $key ) {

				DB::insert('urunresim',[
					'urunID' => $insertid,
					'link' => $key
					]);	

			}//foreach sonu
			
				redirect('magazayonetim/urunler'); 


			}
		}


		// mağaza id sine göre Ürünleri listeliyoruz
		function urunlistesi(){
			$magazaID = Session::select('magaza_id');
			return DB::where('store_id', $magazaID)->get('products')->result();
		}
		
		function urunduzenle($post){return DB::where('id',$post)->get('products')->row();}

		function resimler($post){
			return DB::where('product_id',$post)->get('products_img')->result();
		}

		function sipliste(){
			return DB::where('magazaID',Session::select('magaza_id'))->get('sepet')->result();
		}
