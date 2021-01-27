<?php namespace Project\Controllers;
use Import,DB,Session,Method, HTML;  
	class Brands extends Controller{
		
		function main(){
			
		}

		function new(){
			if (method::post()) {
				$this->brands_model->new(method::post());
			}

		}


	}