<?php 

	function pageList(){
		return DB::orderBy('title','asc')->get('page')->result();
	}

	function pageEdit($post){
		return DB::where('id',$post)->get('page')->row(); 
	}

	function manager(){
	   	return DB::orderBy('name','asc')->get('manager')->result();
	}

	function managerRow($id){
		return DB::where('id',$id)->manager()->row();
	}

	function storeList(){
		return DB::store()->result();
	}

	function status($status){

            $clss = '';$txt = '';

                if($status == '0'){
                    $clss = 'durumoff';
                    $txt = 'pasif';
                }else{
                   	$clss = 'durumok';
                   	$txt = 'aktif';
                }

            return  array(
            	'clss' => $clss,
            	'txt' => $txt
            );
                
	}
  	