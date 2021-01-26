<?php 
	
	class Anasayfa extends Model
	{
		function vitrin(){
			return DB::select('id','title','price','title_seo')->orderBy('id','DESC')->limit('6')->get('products')->result();
			}

		function content($id){return DB::where('id',$id)->get('icerik')->row();}

		function urundetay($post){
			return DB::where('id',$post)->get('products')->row();
		}


		function resimler($post){
			return DB::where('product_id',$post)->get('products_img')->result();
		}

		function iletisim($post){
				$link = 'Gönderen: '.$post['isim'].'<br>mail Adresi: '.$post['email'].'<br>Konu: '.$post['konu'].'<br>Mesaj: '.$post['mesaj'];
				
				Email::sender('info@entamagaza.com', 'Enta Mağaza İletişim')
			     ->receiver('info@entamagaza.com')
			     ->subject('Site İletişimden Mesajınız var')
			     ->message($link)
			     ->send();
		}

		function sayfagetir($post){
			return DB::where('baslikseo',$post)->get('icerik')->row();
		}

		function magazakayit($post){
			Upload::settings([
			    'encode'     => 'md5',
			    'extensions' => 'jpg|png',
			    'maxsize'    => 256000,
			])
			->target('upload/magazalogo')
			->start('logo');

			$logo = Upload::info()->path;			
			$sifre = md5($post['sifre']);
		
			DB::insert('magaza',[
				'magaza_adi' => $post['magaza_adi'],
				'adresi' => $post['adresi'],
				'keyword' => $post['keyword'],
				'magaza_aciklama' => $post['magaza_aciklamasi'],
				'mail' => $post['mail'],
				'sifre' => $sifre,
				'durum' => '0',
				'logo' => $logo,
				'telefon' => $post['magaza_sabit_telefon'],
				'yetkili' => $post['yetkili'],
				'yetkili_tel' => $post['yetkili_tel'],
				'firma_adi' => $post['firma_adi'],
				'magaza_sabit_telefon' => $post['magaza_sabit_telefon'],
				'kep_adresi' => $post['kep_adresi'],
				'magaza_web_adresi' => $post['magaza_web_adresi'],
				'sirket_turu' => $post['sirket_turu'],
				'mersis_no' => $post['mersis_no'],
				'ticaret_odasi' => $post['ticaret_odasi'],
				'vergi_dairesi' => $post['vergi_dairesi'],
				'vergi_no' => $post['vergi_no'],
				'banka_adi' => $post['banka_adi'],
				'iban_no' => $post['iban_no'],
				'yetkili_unvan' => $post['yetkili_unvan'],
				]);
			if(DB::affectedRows()){
				return 'basarili';
			}
		}

		
		
	}