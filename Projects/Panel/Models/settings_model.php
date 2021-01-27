<?php 

class Settings_model extends Model{
	
	function crud($post){

		if ($post['option'] == 'new') {
			DB::insert('settings',[
				'title' => $post['new_title'],
				'value' => $post['new_value'],				
			]);
			if (!DB::error()) {
				redirect('setting');
			}
		}

		if ($post['option'] == 'update') {
			DB::where('id',$post['id'])->update('settings',[
				'value' => $post['update_value'],				
			]);
			if (!DB::error()) {
				redirect('setting');
			}
		}


	}
}