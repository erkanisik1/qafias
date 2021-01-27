<?php 

class Brands_model extends Model{

	function new($post){
		DB::insert('brands',[
			'brand' => trim($post['brand']),
			'brand_seo' => seo(trim($post['brand'])),
			'store_id' => $post['store_id']
		]);
		if (DB::affectedRows()) {redirect('brands');}
	}
	
	
}