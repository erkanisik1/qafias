<?php 


 
if(Cookie::select('USERNAME')){
	define('USERNAME',Cookie::select('USERNAME'));
}else{
	define('USERNAME',Session::select('USERNAME'));
}

if(Cookie::select('USERID')){
	define('USERID',Cookie::select('USERID'));
}else{
	define('USERID',Session::select('USERID'));
}

if(Cookie::select('STOREID')){
	define('STOREID',Cookie::select('STOREID'));
}else{
	define('STOREID',Session::select('STOREID'));
}

