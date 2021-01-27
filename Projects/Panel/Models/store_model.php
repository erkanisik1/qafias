<?php 

	class Store_model extends Model{
		
		function insert($post){		
			Upload::settings([
				    'encode'     => 'md5',
				    'extensions' => 'jpg|png',
				    'maxsize'    => 256000,
				])
				->target('upload/storeLogo')
				->start('logo');

				$logo = Upload::info()->path;			
				$loginPassword = md5($post['loginPassword']);
			
				DB::insert('store',[
					'storeName' 			=> $post['storeName'],
					'storeNameSeo' 			=> seo($post['storeName']),
					'storeLogo' 			=> $logo,
					'keyword' 				=> $post['keyword'],
					'description' 			=> $post['description'],
					'companyName' 			=> $post['companyName'],
					'companyType' 			=> $post['companyType'],
					'companyAddress' 		=> $post['companyAddress'],
					'loginMail' 			=> $post['loginMail'],
					'loginPassword'  		=> $loginPassword,
					'status' 				=> '1',
					'authorized' 			=> $post['authorized'], // yetkili adı soyadı
					'authorized_title' 		=> $post['authorized_title'], // yektisi
					'authorized_tel' 		=> $post['authorized_tel'], //yetkilinin telefon numarası
					'kep_adresi' 			=> $post['kep_adresi'],
					'mersis_no' 			=> $post['mersis_no'],
					'chamber_of_commerce'	=> $post['chamber_of_commerce'], // firmanın kayıtlı olduğu ticaret odası adı
					'tax_administration' 	=> $post['tax_administration'], // firmanın kayıtlı olduğu vergi dairesi
					'tax_number' 			=> $post['tax_number'], //vergi numarası
					'bank_name' 			=> $post['bank_name'], // firmanın kullandığı banka adı
					'iban_no' 				=> $post['iban_no'], // Firmanın banka iban-no'su
				]);
				
				if(DB::affectedRows()){
					redirect('store');
				}		
			}

		function speed($post){		
			$loginPassword = md5($post['loginPassword']);
			
			DB::insert('store',[
				'storeName' 			=> $post['storeName'],
				'storeNameSeo' 			=> seo($post['storeName']),
				'storeLogo' 			=> '-',
				'keyword' 				=> '-',
				'description' 			=> '-',
				'companyName' 			=> $post['storeName'],
				'companyType' 			=> '-',
				'companyAddress' 		=> '-',
				'loginMail' 			=> $post['loginMail'],
				'loginPassword'  		=> $loginPassword,
				'status' 				=> '1',
				'authorized' 			=> '-',
				'authorized_title' 		=> '-',
				'authorized_tel' 		=> '-',
				'kep_adresi' 			=> '-',
				'mersis_no' 			=> '-',
				'chamber_of_commerce'	=> '-',
				'tax_administration' 	=> '-',
				'tax_number' 			=> '-',
				'bank_name' 			=> '-',
				'iban_no' 				=> '-'
			]);
			
			if(DB::affectedRows()){redirect('store');}		
		}

		function update($post){

			Upload::settings([
			    'encode'     => 'md5',
			    'extensions' => 'jpg|png',
			    'maxsize'    => 256000,
			])
			->target('upload/magazalogo')
			->start('logo');

			$logo = Upload::info()->path;			
			$loginPassword = md5($post['loginPassword']);
		
			DB::where('id',$post['id'])->update('store',[
				'storeName' 			=> $post['storeName'],
				'storeNameSeo' 			=> seo($post['storeName']),
				'storeLogo' 			=> $logo,
				'keyword' 				=> $post['keyword'],
				'description' 			=> $post['description'],
				'companyName' 			=> $post['companyName'],
				'companyType' 			=> $post['companyType'],
				'companyAddress' 		=> $post['companyAddress'],
				'loginMail' 			=> $post['loginMail'],
				'loginPassword'  		=> $loginPassword,
				'status' 				=> '1',
				'authorized' 			=> $post['authorized'], // yetkili adı soyadı
				'authorized_title' 		=> $post['authorized_title'], // yektisi
				'authorized_tel' 		=> $post['authorized_tel'], //yetkilinin telefon numarası
				'kep_adresi' 			=> $post['kep_adresi'],
				'mersis_no' 			=> $post['mersis_no'],
				'chamber_of_commerce'	=> $post['chamber_of_commerce'], // firmanın kayıtlı olduğu ticaret odası adı
				'tax_administration' 	=> $post['tax_administration'], // firmanın kayıtlı olduğu vergi dairesi
				'tax_number' 			=> $post['tax_number'], //vergi numarası
				'bank_name' 			=> $post['bank_name'], // firmanın kullandığı banka adı
				'iban_no' 				=> $post['iban_no'], // Firmanın banka iban-no'su
				]);
			
			if(DB::affectedRows()){redirect('store');}
		}

		function list($post = '1'){
			if($post == '0'){
				return DB::where('status','0')->get('store')->result();
			}else{
				return DB::get('store')->result(); 
			}
		}

		function magazasayisi(){return DB::get('store')->result(); }

		function magazaDuzenle($id){return DB::where('id', $id)->get('store')->row();}

		function magazaonay(){
			return DB::where('durum','0')->get('store')->result();
			
		}

		public function detail($id){
			return DB::where('id',$id)->get('store')->row();
		}

	

		function mail($post){

			Email::smtpHost('smtp.yandex.com')
			->smtpUser('musteri_hizmetleri@entamagaza.com')
			->smtpPassword('smkfy99')
			->sender('musteri_hizmetleri@entamagaza.com', 'Enta Mağaza Müşteri Hizmetleri')
			->receiver($post['mail'])
			->subject($post['konu'])
			->message($post['mesaj'])
			->send(); 
			
			redirect(baseUrl().'yonetim/magaza/liste');
		}



	} // class sonu