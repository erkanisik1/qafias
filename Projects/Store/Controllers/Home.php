<?php namespace Project\Controllers;
use Session,Method; 

class Home extends Controller{	
   
    public function main(){	
    	if (Method::post()) {$cntr = $this->store_model->login(Method::post());}
        
       
    }	
	
   
}