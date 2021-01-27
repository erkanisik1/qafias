<?php 

	
	class Yonetim extends Model
	{
		
		function login($post){


			$pass = md5($post['pass']);
			
			$login =  DB::where('mail',$post['mail'],'and')
			 	->where('password',$pass )
				->get('manager')
				->row();

				if ($login) {
				Session::insert('LOGIN', 'true');
				Session::insert('USERNAME',$login->name);
				Session::insert('USERID',$login->id);
				//redirect('');
			}
			
			
		}


	




	}