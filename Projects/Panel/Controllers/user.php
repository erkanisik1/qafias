<?php namespace Project\Controllers;
use DB,Method,Session; 

class User extends Controller{
	
	function main(){
		//Import::view('user/index');
	}

	function new(){
		if (Method::post()) {$this->user_model->new(Method::post());}
		
	}

	function edit($id){
		if (Method::post()) {$this->user_model->update(Method::post());}
	
		view::id($id);
	}
}