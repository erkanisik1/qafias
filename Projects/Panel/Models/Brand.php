<?php 
	class Brand extends Model{
	
		function list(){
			return DB::brands()->result();
		}

		function  new($post){
				DB::insert('marka',[
					'brand' => $post['brand'], 
					'brand_seo' => seo($post['brand']), 
					'store_id' => $post['store_id'], 
					'status'=> 1,
				]);				
				redirect('brand');
		}
	
	}