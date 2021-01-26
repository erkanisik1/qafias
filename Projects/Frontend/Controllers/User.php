<?php namespace Project\Controllers;
use URL, Method, Session, DB; 
	
class User extends Controller{

	
	function main(){
		$sip = $this->satis->siparislerim();
		view::sip($sip);
		
	}

	function login(){
		if(Method::post()) {$this->user_model->login(Method::post());}
	
	}//login function

	function register(){
		if(Method::post()) {$this->user_model->register(Method::post());}
		
	}//register function

	function logout(){
		Session::deleteAll();
			redirect('/');
	}


	function aktivizasyon($data){

		DB::where('mailOnay', $data)->update('user',[
		    'mailOnay'    => '',
		    'status' => '1'
		]);
		if(DB::affectedRows()){
			view::get('/user/finis');
		}else{
			view::get('/user/noaktifkodu');
		}
			
	}
}// user class end