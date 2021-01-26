<?php namespace Project\Controllers;
use Import,URL,Session,Method,DB; 

class User extends Controller{
	
	function main(){
		$data['sip'] = $this->satis->siparislerim();
			
		Import::view(TEMA.'user/index',$data);
	}

	function login(){
		if(Method::post()) {$this->user_model->login(Method::post());}
		Import::view(TEMA.'user/login');
	}//login function

	function register(){
		Import::view(TEMA.'user/user_register_view');
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
			Import::view(TEMA.'finis');
		}else{
			Import::view(TEMA.'noaktifkodu');
		}
			
	}
}// user class end