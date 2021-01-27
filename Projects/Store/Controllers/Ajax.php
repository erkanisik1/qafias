<?php  namespace Project\Controllers;

use Method,DB,Folder;

class Ajax extends Controller{
	
	function option_delete(){
		$id =  Method::post('id');
		DB::where('id',$id)->delete('secenek');
		if (DB::affectedRows()) {
			echo $id;
		}
		
	}


	function img_delete(){
		$id =  Method::post('id');
		$db = DB::where('id',$id)->get('products_img')->row();

		
		unlink(Folder::basePATH().'/'.$db->link);
		DB::where('id',$id)->delete('products_img');
		//echo  Folder::basePATH().'/'.$db->link;
		echo Method::post('id');
	}
}