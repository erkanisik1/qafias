<?php namespace Project\Controllers;
use Import,DB;  

class Y extends Controller
{
	function main(){

		echo Form::enctype('multipart')->open('form');
		echo Form::file('uploadFile',true);
		echo Form::submit('uploadButton');
		echo Form::close();
$date = date('Ymd');
		if (Method::post()) {

			Upload::settings([
			    'encode'     => 'md5',
			    'extensions' => 'jpg|png',
			    'maxsize'    => 256000,
			])
			->target('upload/magaza_id-'.Session::select('magaza_id'))
			->start('uploadFile');

			foreach (Upload::info()->encodeName as $key ) {

				$lnk = $key.'/'.Session::select('magaza_id');

				echo $lnk;
			}


//output(  Upload::info() );
		}


		
	}
}