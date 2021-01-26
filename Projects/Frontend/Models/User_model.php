<?php 

class User_model extends Model{
	

	function login($post){
		$ctn = DB::where('email',$post['email'],'and')
		->where('pass',md5($post['password']))
		->get('user')
		->row();



		if($ctn){
			Session::insert('login', TRUE);
			Session::insert('userid', $ctn->id);
			Session::insert('user', $ctn->name);
			redirect('/');
		}
	}// login function end
}//class sonu