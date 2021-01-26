<?php 

	
	class Login_model extends Model{
		
		function userLogin($post){
			
			
			$ctn = DB::where('mail',$post['email'],'and')
			->where('pass',md5($post['password']))
			->get('musteri')
			->row();

			
			
			if($ctn){
				Session::insert('login', TRUE);
				Session::insert('userid', $ctn->musteri_id);
				Session::insert('user', $ctn->isim);

				redirect(URL::base());
			}

		}

		function userCreate($post){
			$isim = $post['isim'].' '.$post['soyadi'];
			$pass = md5($post['sifre']);
			$rast = md5(date('dmyhsi'));
		
			
			DB::insert('musteri',[
				'isim' => $isim,
			    'mail' => $post['eposta'],
			    'pass' => $pass,		   
			    'mailOnay' => $rast			 
			]);
		
			if(DB::affectedRows()){ 
				
			$link = '<a href="http://entamagaza.com/login/aktivizasyon/'.$rast.'" target="_blank">Hesabınızın aktifleşmesi için lütfen tıklayın...</a>';
			Email::smtpHost('smtp.yandex.com')
			->smtpUser('musteri_hizmetleri@entamagaza.com')
			->smtpPassword('smkfy99')
			->sender('musteri_hizmetleri@entamagaza.com', 'Enta Mağaza Müşteri Hizmetleri')
			->receiver($post['eposta'])
			->subject('Üyelik Aktivizasyonu')
			->message($link)
			->send(); 
			     echo '1';
			}
			
		}

		function userForgotPassword($post){
			
		}

		function userEdit($post){
			
		}
		
	}
