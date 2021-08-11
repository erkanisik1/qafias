<?php 
			use Import,DB;  
			class Test_model extends Model{
				
				function list(){
					return DB::get('products_category')->result();
				}

			

				function delete($id){
					DB::where('id',$id)->delete('products_category');
					redirect(Test);
				}

			}