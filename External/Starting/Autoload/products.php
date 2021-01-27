<?php 

function main_products($limit = null){return DB::select('id','title','price','title_seo')->orderBy('id','DESC')->limit($limit)->get('products')->result();}

  function product_detail($id){return DB::where('id',$id)->get('products')->row();}

  function store_products(){return DB::orderBy('id','desc')->where('store_id',session::select('STOREID'))->get('products')->result();}

  function category_list_products($cat_id){
  
    return DB::query("SELECT * FROM products WHERE category IN($cat_id)")->result();
    //return DB::orderBy('id','desc')->where('category',$cat_id)->get('products')->result();
  }

  function products_category($id){return DB::where('id',$id)->get('products_category')->row();}

  function product_category($data = '0'){return DB::where('status','1','and')->where('parentid',$data)->orderBy('name','asc')->get('products_category')->result();}

  function price($price){return number_format( $price, 2, ',', '.');}

  function store($id){return DB::where('id',$id)->get('store')->row();}

  function brands(){return DB::get('brands')->result();}

  function product_images($arama){
    return DB::where('product_id', $arama)->get('products_img')->result();
  }

  function detail_image_list($par){
    return 'TEST';//DB::where('product_id','192')->get('products_img')-result();
  }
  
  function mainimage($search){    
    $link =  DB::select('link')->where('product_id',$search)->get('products_img')->limit('1')->orderBy('id','ASC')->value();
    if($link){return $link;}else{return 'images/nophoto.jpg';}
  }

  function product_piece(){
     $say =DB::where('store_id',Session::select('magaza_id'))->get('products')->result();
     return count($say);
  }

  function secenekler($id){
    return DB::where('urunID',$id)->get('secenek')->result();
  }
function product_row($id){
  return DB::where('id',$id)->get('products')->row();
}