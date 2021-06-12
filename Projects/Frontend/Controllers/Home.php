<?php namespace Project\Controllers;
use Import,Cart; 
class Home extends Controller{


	function main(){ 
		

		//$data['vitrin'] = $this->anasayfa->vitrin();	
		//$data['page'] = 'home';
		//echo 'frnrmnr';
	    //Import::view(TEMA.'index',$data);
	 
	}


	    
	function main1($params = ''){
	    $data['vitrin'] = $this->anasayfa->vitrin();	
	    Import::view(TEMA.'index',$data);
    }	

    function show404(){import::view(TEMA.'show404');}
	
}