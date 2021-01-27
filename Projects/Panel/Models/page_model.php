<?php 

	
	class Page_model extends Model{
		
	function ekle($post){
		
		DB::insert('page',[
		    'title'    	=> $post['title'],
		    'title_seo' 	=> seo($post['title']),
		    'content' 		=> $post['content'],
			]);
			if (DB::error()) {echo DB::error();}else{redirect('page');}
			
		}

	function update($post){
		
		DB::where('id', $post['id'])->update('page',[
			    'title'    => $post['title'],
			    'title_seo' => seo($post['title']),
			    'content' => $post['content'],
			   		  
			]);
		if (DB::error()) {echo DB::error();}else{redirect('page');}
		
	}


	
	}