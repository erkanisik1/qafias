<?php 

class Mstr extends Model{
	
	function liste(){
		return DB::user()->result();
	}
} ?>