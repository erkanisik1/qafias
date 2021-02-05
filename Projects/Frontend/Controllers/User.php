<?php namespace Project\Controllers;
use URL, Method, Session, DB, URI; 
	
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
		redirect(URL::base());
	}


	function aktivizasyon(){
		
		View::back($this->user_model->activation(URI::get('aktivizasyon')));
	}

}// user class end