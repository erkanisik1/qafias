<?php namespace Project\Controllers;
use Import,Cart,Method,Session,URL,Email; 

	
	class Login extends Controller{
		function main(){
			$me = '';
			if(Method::post()){
				$me = $this->login_model->userLogin(Method::post());
				if($me=='alert'){
					Afunc::alert('Kayıtlı üye bulunamadı');
					Afunc::git('login');
				}

				if($me=='onaysiz'){
					Afunc::alert('Lütfen mail adresinizi kontrol edin, gönderiğimiz e-postayı onaylamanız gerekmekte.');
					Afunc::git('login');
				}
			}
			
			IMPORT::view(TEMA.'user/login');
		}//main function



		function register(){
			if(Method::post()) {$this->user_model->new(Method::post());}
			Import::view(TEMA.'user/user_register_view');
		}//register function

		function sifremi_unuttum(){
			//if(Method::post()){$this->login_model->userForgotPassword(Method::post());}
			Import::view(TEMA.'sifremi_unuttum');
		}

		function uye_duzenle(){
			//if(Method::post()){$this->login_model->userEdit(Method::post());}
			Import::view(TEMA.'uye_duzenle');

		}

		function cikis(){
			Session::deleteAll();
			redirect(baseUrl());
		}

		

		function aktivizasyon($data){
			DB::where('mailOnay', $data)->update('musteri',[
			    'mailOnay'    => '',
			    'durum' => '1'
			]);
			if(DB::affectedRows()){Import::view(TEMA.'finis');}else{Import::view(TEMA.'noaktifkodu');}
			
		}

		function y1($par = ''){
			IMPORT::view(TEMA.'login_y1');
		}
		

	


	}

