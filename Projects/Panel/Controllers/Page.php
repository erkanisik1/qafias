<?php namespace Project\Controllers;

use Import,DB,Method,Session; 

	class Page extends Controller
	{
		function main(){
			//$list = $this->page_model->page_list();
			//view::list($list);
		}

		function new(){
			if(Method::post()){$this->page_model->ekle(Method::post());}
			
		}

		function edit($id){
			if(Method::post()){$this->page_model->update(Method::post());	}
			//$data['dzn'] = $this->page_model->edit($id); 
			//Import::view('page/edit',$data);
			view::id($id);
		}

		function delete($id){
			DB::where('id', $id)->delete('page');
			redirect('page');
		}
	}