<?php namespace Project\Controllers;
use Import,DB;  

class Create extends Controller{
	
	function main(){

		if (method::post('controller') == '1') {
			
			$file_name = Ucwords(method::post('name'));
			
			$controller_file = REAL_BASE_DIR.'Applications/Magazayonetim/Controllers/'.$file_name.'.php';
			file::create($controller_file);
			
			//$controller = fopen($controller_file,"a");

			$yazdir = "<?php namespace Project\Controllers;
use Import,DB;  
class $file_name extends Controller{
	function main(){
		Import::view('".$file_name."/index_view');
	}

	function new(){
		if(method::post()){\$this->".$file_name."_model->insert(method::post());}
		Import::view('".$file_name."/new_view');
	}

	function edit(){
		if(method::post()){\$this->".$file_name."_model->update(method::post());}
		Import::view('".$file_name."/edit_view');
	}

	function delete(\$id){
		\$this->".$file_name."_model->delete(method::post());		
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
			$model_file = REAL_BASE_DIR.'Applications/Magazayonetim/Models/'.method::post('name').'_model.php';
			file::create($model_file);
			
			$yazdir = "<?php namespace Project\Controllers;
use Import,DB;  
class ".$file_name."_model extends Model{
	function list(){
		return DB::get('$table')->result();
	}

	function insert(\$post){

		DB::insert('$table',[";
		foreach (DB::listColumns($table) as $key) {
			$yazdir .=	"'$key->Field' =>  \$post['$key->Field'],\n";
		}


	$yazdir .= "]);
		
	}

	function update(\$id){
		DB::where('id',\$id)->update('$table',[ ";

foreach (DB::listColumns($table) as $key) {
			$yazdir .=	"'$key->Field' =>  \$post['$key->Field'],\n";
		}


	$yazdir .= "]);
	}

function delete(\$id){
	DB::where('id',\$id)->delete('".method::post('table')."');
		redirect($file_name);
}

}";

			file::write($model, $yazdir);

			

			
			
		}//Model sonu

		if (method::post('view') == '1') {
			$file_name = Ucwords(method::post('name'));
			$folder = REAL_BASE_DIR.'Applications/Magazayonetim/Views/'.$file_name;

			Folder::create($folder,0755);
			file::create($folder.'/index_view.php');
			file::create($folder.'/update_view.php');
			file::create($folder.'/insert_view.php');

			$write = "<?php namespace Project\Controllers;
use Import,DB;  Import::view('header') ?>

<?php namespace Project\Controllers;
use Import,DB;  Import::view('footer') ?>";

			file::write($folder.'/index_view.php', $write);
			file::write($folder.'/update_view.php', $write);
			file::write($folder.'/insert_view.php', $write);



		}//view sonu


		Import::view('Create_view');

	}
}
?>

