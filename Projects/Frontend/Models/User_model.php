<?php 

class User_model extends Model{
	

	function login($post){
		$ctn = DB::where('email',$post['email'],'and')
		->where('password',md5($post['password']))
		->get('user')
		->row();

		if($ctn){
			Session::insert('LOGIN', TRUE);
			Session::insert('USERID', $ctn->id);
			Session::insert('USER', $ctn->name);
			redirect('/');
		}
	}// login function end

		function register($post){

			$name 		= $post['name'].' '.$post['surname'];
			$pass 		= md5($post['password']);
			$rast 		= md5(date('dmyhsi'));
			$birthdate 	= $post['year'].'-'.$post['month'].'-'.$post['day'];
			/*
			DB::insert('user',[
				'name' 			=> $name,
			    'email' 		=> $post['email'],
			    'password' 		=> $pass,		   
			    'activation'	=> $rast,
			    'birthdate'		=> $birthdate,
			    'gender'		=> $post['gender'],	
			    'telephone'		=> $post['phone']		 
			]);
			*/
			$mailpass = 'A1kwmhtox/wgridkr';
		
				
			$link = 'Hesabınızın aktifleşmesi için lütfen tıklayın<a href="'.URL::base().'user/aktivizasyon/'.$rast.'" target="_blank">'.$rast.'</a>';
			Email::smtpHost('smtp.yandex.com')
			->smtpUser('usermanage@qafias.com')
			->smtpPassword('akwmhtoxqwgridkr')
			->sender('usermanage@qafias.com', 'Qafia\'s Müşteri Hizmetleri')
			->receiver($post['email'])
			->subject('Üyelik Aktivizasyonu')
			->message($link)
			->send(); 

			if(DB::affectedRows()){ 
			 
			}else{
				echo DB::error();
			}
		
			
		}

		function activation($post){

			DB::where('activation', $post)
			->update('user',[
		    'activation'    => '',
		    'status' => '1'
			]);

			if(DB::affectedRows()){
				return 1;//view::get('/user/finis');
			}else{
				return 2;//view::get('/User/noaktifkodu');
			}
		}

}//class sonu