<?php namespace Project\Controllers;
use Import,DB,Method,Session, URI;

class Category extends Controller{	
   
    function main(){	

    	if (Method::post()) {$this->category_model->new(Method::post());}

    	//Import::view('category/index');
    }

	function new(){
		if (Method::post()) {$this->category_model->new(Method::post());}
		Import::view('category/new');
	}

	function edit(){
		$id = Uri::get('edit');
		
		if (Method::post()) {$this->category_model->update(Method::post());}
		$edit = $this->category_model->edit($id);
		view::edit($edit);
	}

	function delete($id){
		DB::where('id',$id)->delete('products_category');
		if (DB::affectedRows()) {redirect('category');}
	}


}