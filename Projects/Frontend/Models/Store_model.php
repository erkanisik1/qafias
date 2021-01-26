<?php 

class Store_model extends Model{
	
	function kayit($post){
		DB::insert('store',
			'name' 					=> $post['name'],
			'name_seo' 				=> seo($post['name']),
			'address' 				=> $post['address'],
			'keyword' 				=> $post['keyword'],
			'description' 			=> $post['description'],
			'mail' 					=> $post['mail'],
			'password' 				=> $post['password'],
			'status' 				=> 0,
			'store_logo' 			=> $post['store_logo'],
			'tel' 					=> $post['tel'],
			'authorized' 			=> $post['authorized'],
			'authorized_tel'		=> $post['authorized_tel'],
			'shop_name' 			=> $post['shop_name'],
			'store_tel' 			=> $post['store_tel'],
			'kep_adresi' 			=> $post['kep_adresi'],
			'shop_url' 				=> $post['shop_url'],
			'activity_category'		=> $post['activity_category'],
			'company_type' 			=> $post['company_type'],
			'mersis_no' 			=> $post['mersis_no'],
			'chamber_of_commerce'	=> $post['chamber_of_commerce'],
			'tax_administration' 	=> $post['tax_administration'],
			'tax_number' 			=> $post['tax_number'],
			'bank_name' 			=> $post['bank_name'],
			'iban_no' 				=> $post['iban_no'],
			'authorized_title' 		=> $post['authorized_title'],
]);
	}
}