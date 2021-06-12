<?php namespace Project\Controllers;

use Import,DB,Method,Session; 

	class Store extends Controller{
		function main(){
			$sayi = $this->store_model->magazasayisi();
			View::sayi($sayi);
		}

		function new(){
			if(Method::post()){ $this->store_model->insert(Method::post());}
			//Import::view('store/new');
		}

		function speed(){
			if(Method::post()){ $this->store_model->speed(Method::post());}
			//Import::view('store/new');
		}

		function edit($id){ 
			
			if(method::post()){$this->store_model->duzenlekayit(method::post());}

			$data['firma'] = $this->store_model->magazaDuzenle($id);			
			
			Import::view('magaza_duzenle',$data);
		}

		function delete($id){ 
			DB::where('id', $id)->delete('store');
			if(DB::error()){redirect('store');}
		} 

		function list(){
			$data['dukkan'] = $this->store_model->list();
			Import::view('store/store_list',$data);
		}

		function detail($id){
			$data['detay'] = $this->store_model->detail($id);
			Import::view('store/detail',$data);
		}

		function onaybekleyen(){
			//$dukkan = $this->store_model->liste('0');
			//View::dukkan($dukkan);
		}

		function send($id){
			if(method::post()){
				$this->store_model->mail(method::post());
			}
			$data['detay'] = $this->store_model->detay($id);
			import::view('mail',$data);
		}

	} // class sonu