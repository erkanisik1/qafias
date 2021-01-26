<?php namespace Project\Controllers;
use Import,Cart; 

	class Content extends Controller
	{
		
	function main($id=''){
			
			$data['content'] = $this->anasayfa->content($id);

			Import::view(TEMA.'content',$data);
		}
	}