<?php namespace Project\Controllers;

use DB,Method; 


class Ajax extends Controller{
	
	function setting_delete(){
		$id = Method::post('id');
		DB::where('id',$id)->delete('settings');
		if (!DB::error()) {
			echo $id;	
		}
		
	}
}