<?php 


class Category_model extends Model{

	function edit($post){return DB::where('id', $post)->get('products_category')->row();}// edit function end
	
	function update($post){
		DB::where('id',$post['id'])->update('products_category',[
			'parentid'	=> $post['category'],
		    'name' 		=> $post['category_name'],
		    'seo' 		=> seo($post['category_name']),
		    'status' 	=> $post['status']
		]);
		if (!DB::error()) {redirect('category');}else{echo DB::error();}
	}// update function end

	function new($post){
		DB::insert('products_category',[
		    'parentid'	=> $post['parentid'],
		    'name' 		=> $post['category_name'],
		    'seo' 		=> seo($post['category_name']),
		    'img' 		=> ''
		]);
		if (DB::error()) {echo DB::error();}else{redirect('category');}
	}// new function end


}// class end