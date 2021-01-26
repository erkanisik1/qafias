<?php 

	/**
	* üye ilgili işlemlerin yapıldığı model dosyası
	* yazar: erkanışık
	* oluşturulma tarihi: 14-05-2017 00:57 pazar
	*/
	class Uyelik extends Model{
		
		function bilgi($post){
		
			return DB::where('musteri_id',$post)->get('musteri')->row();
		}
	}

 ?>