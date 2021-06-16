<?php 

	class Slider_model extends model{

		function new_slider_save($post){
			Upload::settings([
			    'encode'     => false,
			    'prefix'     => '__slider-',
			    'extensions' => 'jpg|png|gif|jpeg',
			   ])->target('upload/slider')->start('resim');

			DB::insert('slider',[
				'title' 		=> $post['baslik'],
				'description' 	=> $post['aciklama'],
				'imgUrl' 		=> Upload::info()->path,
				'link' 			=> $post['link'],
				'status' 		=> '1',			
				]);
			if (DB::affectedRows()) {
				redirect('slayt');
			}else{
				output(DB::error());
			}
			
		}


		function slider_update($post){

			if($_FILES['resim']['name']){
				Upload::settings([
			    'encode'     => false,
			    'prefix'     => '__slider-',
			    'extensions' => 'jpg|png|gif',
			   ])->target('upload')->start('resim');

				DB::where('id',$post['id'])->update('slider',[
					'title' 		=> $post['baslik'],
					'description' 	=> $post['aciklama'],
					'imgUrl' 		=> Upload::info()->path,
					'link' 			=> $post['link'],
					'status' 		=> '1',	
					]);
				redirect('slayt');

			}else{
				DB::where('id',$post['id'])->update('slider',[
				'title' 		=> $post['baslik'],
				'description' 	=> $post['aciklama'],
				'link' 			=> $post['link'],
				'status' 		=> '1',			
				]);
				redirect('slayt');
			}
			

		}

		function delete($id){
			$resimlink = DB::select('resim')->where('id',$id)->get('slider')->value();
			unlink(pathinfo($_SERVER['SCRIPT_FILENAME'],PATHINFO_DIRNAME).'/'.$resimlink);
			DB::where('id',$id)->delete('slider');
			redirect('slayt');
		}

	}