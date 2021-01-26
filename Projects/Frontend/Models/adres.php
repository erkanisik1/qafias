<?php 
	class Adres extends Model{
		
		function il(){
			retrun DB::get('il')->result();
		}
	}

 ?>