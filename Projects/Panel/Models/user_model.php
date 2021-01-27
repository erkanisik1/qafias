<?php 

class User_model extends Model{
	
	function new($post){

		if(!$_FILES['resim']['name']['0'] == ''){
				Upload::settings([
				    'encode'     => 'md5',
				    'extensions' => 'jpg|png|jpeg|gif',
				    'maxsize'    => 154000,
				])
				->target('upload/manager_image')
				->start('resim');

				$avatar = Upload::info()->path;		
			}else{
				$avatar = '';
			}
	
			
		DB::insert('manager',[
			'name' 		=> $post['name'],
			'mail' 		=> $post['mail'],
			'tel' 		=> $post['tel'],
			'username' 	=> $post['username'],
			'password'	=> md5($post['password']),
			'avatar'	=> $avatar
		]);
		output(DB::error());
		if (DB::affectedRows()) {
			redirect('panel/user');
		}

		
	}
}