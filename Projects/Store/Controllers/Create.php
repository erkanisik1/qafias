<?php namespace Project\Controllers;
use Import,DB,Folder,File,Method;  

class Create extends Controller{
	
	function main(){

	if (method::post('controller') == '1') {
			
			$file_name = Ucwords(method::post('name'));
			
			$controller_file = REAL_BASE_DIR.'Projects/Store/Controllers/'.$file_name.'.php';
			file::create($controller_file);
			
			//$controller = fopen($controller_file,"a");

			$yazdir = "<?php namespace Project\Controllers;
use Import,DB;  
class $file_name extends Controller{
	function main(){
		
	}

	function new(){
		if(method::post()){\$this->".$file_name."_model->new(method::post());}
		
	}

	function edit(){
		\$id = Uri::get('edit');
		if(method::post()){\$this->".$file_name."_model->update(method::post());}
		View::id($id);
		
	}

	function delete(){
		\$id = Uri::get('delete');
		\$this->".$file_name."_model->delete(\$id);		
	}



}";

file::write($controller_file, $yazdir);
			



			/*

			foreach (DB::listColumns($table) as $key) {
				echo $key->Field.'<br>';
			}
			
			*/
		
		}// controller sonu

		if (method::post('model') == '1') {

			$file_name = Ucwords(method::post('name'));
			$table = method::post('table');
			$model_file = REAL_BASE_DIR.'Projects/Store/Models/'.$file_name.'_model.php';
			file::create($model_file);
			
			$yazdir = "<?php 
			use Import,DB;  
			class ".$file_name."_model extends Model{
				
				function list(){
					return DB::get('$table')->result();
				}

			

				function delete(\$id){
					DB::where('id',\$id)->delete('".method::post('table')."');
					redirect($file_name);
				}

			}";

			file::write($model_file, $yazdir);

			

			
			
		}//Model sonu

	if (method::post('view') == '1') {
			$file_name = Ucwords(method::post('name'));
			$folder = REAL_BASE_DIR.'Projects/Store/Views/'.$file_name;

			Folder::create($folder,0755);
			File::create($folder.'/main.wizard.php');
			File::create($folder.'/update.wizard.php');
			File::create($folder.'/new.wizard.php');

		}//view sonu
		

	}
}
