<?php namespace Project\Controllers;
use DB,Method,Email,Session,Cart; 
	class Ajax extends Controller{
		
		function ilcegetir(){
			$id = Method::post('ilceid');			
			$a = '';
			$list = DB::where('il_id', $id)->orderBy('ilce_adi','ASC')->get('ilce')->result();
			$a .=  '<option value="">*İlçeyi Seçiniz...</option>';
			foreach ($list as $key ) {
				$a .= '<option value="'.$key->ilce_adi.'">'.$key->ilce_adi.'</option>';
			}
			echo $a;
		}// ilcegetir fonksiyonu


		function uyekayit(){			
			$this->login_model->userCreate(Method::post());
		}// yeni Üye Kaydı


		function hemenal(){

			if (Session::select('userid')) {
				$this->satis->sipekle(method::post());
			}else{	
				$this->satis->no_user_order1(method::post());
			}
		}

		function basketadd(){
			$data = explode('/', method::post('veri'));
			$rnd = Session::select('userid').$data['2'];
			cart::insertItem([
				'product'       => product_detail($data['0'])->title,
				'price'         => product_detail($data['0'])->price,
				'quantity'      => $data['1'],
				'serial-number' => $rnd,
				'userid'		=> Session::select('userid'),
			]);
			echo 'başarılı';
		}


		function user_register(){
			$isim = method::post('name').' '.method::post('surname');
			$rast = md5(date('dmyhsi'));
			$birthdate = method::post('year').'-'.method::post('month').'-'.method::post('day');
			DB::insert('user',[
				'name' 		=> $isim,
			    'email' 	=> method::post('email'),
			    'pass' 		=> md5(md5(method::post('email'))),	
			    'telephone' => method::post('phone'),  
			    'mailOnay' 	=> $rast,
			    'birthdate' => $birthdate		 
			]);
		
			if(DB::affectedRows()){ 
				$link = '<a href="http://prestigemagaza.com/user/aktivizasyon/'.$rast.'" target="_blank">Hesabınızın aktifleşmesi için lütfen tıklayın...</a>';
				Email::from('musterihizmetleri@prestigemagaza.com','Prestige Mağaza Müşteri Hizmetleri')->to(method::post('email'))->send('Üyelik Aktivizasyonu', $link);
				echo '1';
			}
		}
	}// class 