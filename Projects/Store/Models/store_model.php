<?php 
	class Store_model extends Model{
		
		function login($post){
			
			
			$pass = md5($post['loginPassword']);

			$check = DB::where('mail', $post['loginMail'],'and')->where('password',$pass)->get('store')->row();

		
			if($check){

				Session::insert('LOGIN', 'true');
				Session::insert('STOREID', $check->id);
				Session::insert('STORENAME', $check->shop_name);
				redirect();
			}

		}


	}//class sonu	