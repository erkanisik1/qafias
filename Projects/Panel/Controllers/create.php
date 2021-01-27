<?php namespace Project\Controllers;

use Import,DB,Method,Session; 

class Create extends Controller{
	
	function main(){


		if(Method::post('cnt') == 'controller'){
			$dosya = REAL_BASE_DIR.'Applications/Frontend/Controllers/'.Method::post('isim').'.php';
			$dosyaadi = Ucwords(Method::post('isim'));
			touch($dosya);
			$dosya=fopen($dosya,"a");
			$yazdir='<?php namespace Project\Controllers;

use Import,DB,Method,Session; 
				class '.$dosyaadi.' extends Controller{
					function main(){
						Import::view(TEMA.\''.Method::post('isim').'.view\');
					}
				}';
			fwrite($dosya, $yazdir);

			
		}
		if(Method::post('cnt') == 'method'){echo Method::post('isim');}
		if(Method::post('cnt') == 'view'){
			$dosya = REAL_BASE_DIR.'Applications/Frontend/Views/'.TEMA.Method::post('isim').'.view.php';
			touch($dosya);
			$dosya=fopen($dosya,"a");
			$yazdir='<?php namespace Project\Controllers;

use Import,DB,Method,Session; IMPORT::view(TEMA.\'header\'); ?>
			<?php namespace Project\Controllers;

use Import,DB,Method,Session; IMPORT::view(TEMA.\'footer\'); ?>';
			fwrite($dosya, $yazdir);

			


		}
Method::post('cnt', '');
		Import::view('create');

	}
}
