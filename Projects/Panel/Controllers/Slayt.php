<?php namespace Project\Controllers;

use method,DB,Session,URI;


class Slayt extends Controller{	
   
    function main(){	
        $slider = DB::sliderResult();
         $sql = DB::max('rank')->get('slider')->value();
      
        view::slider($slider)->sira_max($sql);
    	
  	}


    function new(){
        if(method::post()){$this->slider_model->new_slider_save(method::post());}
       

    }

    function slaytEdit(){
        $id = Uri::get('slaytEdit');
    }


    function delete(){
        $id = Uri::get('delete');
        DB::where('id',$id)->delete('slider');
        redirect('/panel/slayt');

    }





}