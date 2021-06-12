<?php 
	class Adres extends Model{
		
		function il(){
			return DB::get('il')->result();
		}
	}

 ?>