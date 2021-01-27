<?php namespace Project\Controllers;
use Import,DB,Method,Session;

class Category extends Controller{	
   
    function main(){	

    	if (Method::post()) {$this->category_model->new(Method::post());}

    	//Import::view('category/index');
    }

	function new(){
		if (Method::post()) {$this->category_model->new(Method::post());}
		Import::view('category/new');
	}

	function edit($id){
		output(method::post());
		if (Method::post()) {$this->category_model->update(Method::post());}
		$data['edit'] = $this->category_model->edit($id);
		Import::view('category/edit',$data);
	}

	function delete($id){
		DB::where('id',$id)->delete('products_category');
		if (DB::affectedRows()) {redirect('yonetim/category');}
	}


}