<?php 


	function jalert($mesaj){
		echo '<script>alert("'.$mesaj.'")</script>';
	}

	function store_name($id){return DB::where('id',$id)->get('store')->row();}
  function store_brands($store_id){
      return DB::orderBy('brand','asc')->where('store_id',$store_id)->get('brands')->result();
    }

  function brand(){
    return DB::orderBy('brand','asc')->get('brands')->result();
  }
 
	function settings($param = ''){
    if ($param) {
      return DB::select('value')->where('title',$param)->get('settings')->value();
    }else{
      return DB::get('settings')->result();  
    }
		
	}

  function productNew($date){
    return Date::diffDayUp($date, Date::now());
  }

  function settingRow($id){
    return DB::where('id',$id)->get('settings')->row();
  }

function subcat($id){
  $s='';
    $pa = DB::where('parentid',$id)->get('products_category')->result();
    foreach ($pa as $key ) {
      $s .= $key->id.',';
    }
    return $s;
}
	

	function cargo_list(){
		return DB::orderBy('name','asc')->get('cargo')->result();
	}

  function manager($id = 0){
    if ($id == 0) {
     return DB::orderBy('name','asc')->get('manager')->result();
    }else{
      return DB::where('id',$id)->get('manager')->row();
    }
  }

	function secenek($id){
$yaz = null;
      $ke = DB::where('urunID',$id)->get('secenek')->result();
      foreach ($ke as $key ) {
        $label = $key->label;
        $option = explode(',', $key->secenek);
      
        $yaz .= '<h5><label>'.$label.'</label>: <select name="'.$label.'" class="option1"><option>Seçiniz....</option>';
        
        foreach ($option as $key ) {
          $yaz .='<option value="'.$key.'">'.$key.'</option>';  
        }
        
        $yaz .= '</select><h5>';
      }
      return $yaz;
    }


	function il_select($sec=''){
    $il = DB::orderBy('il_adi','ASC')->get('il')->result();
    $a = '';
    $a .= '<select name="il" id="il" required >';
    $a .= '<option value="">*İl Seçiniz</option>';
    foreach ($il as $key) {
      $a .= '<option value="'.$key->id.'"';

        if($key->il_adi == $sec){$a .= 'selected';}

      $a .='>'.$key->il_adi.'</option>';
   }
    $a .= '</select>'; 
    return $a;
}

function category($id){
    return DB::where('id',$id)->get('products_category')->row();
    
  }

  function category_result($id = 0){
    return DB::where('parentid',$id,'and')->where('status','1')->get('products_category')->result();
  }

  function page($par){
    $l = explode('.', $par);
    return DB::where('title_seo',$l['0'])->get('page')->row();
  }

    function pageLink(){
    
    return DB::select('id', 'title', 'title_seo')->where('status',1)->get('page')->result();
  }


function seo($s) {
    $tr = array('ş','Ş','ı','I','İ','ğ','Ğ','ü','Ü','ö','Ö','Ç','ç','(',')','/',':',',');
    $eng = array('s','s','i','i','i','g','g','u','u','o','o','c','c','','','-','-','-');
    $s = str_replace($tr,$eng,$s);
    $s = strtolower($s);
    $s = preg_replace('/&amp;amp;amp;amp;amp;amp;amp;amp;amp;.+?;/', '', $s);
    $s = preg_replace('/\s+/', '-', $s);
    $s = preg_replace('|-+|', '-', $s);
    $s = preg_replace('/#/', '', $s);
    $s = str_replace('.', '', $s);
    $s = trim($s, '-');
    return $s;
  }

  function selected($id1, $id2){if ($id1 == $id2){echo 'selected';}}

 

  function tcevir($tarih) {

  $bosluk = explode(' ', $tarih);

  $tr = explode("-",$bosluk['0']);

  $tarih1 = $tr['2']."-".$tr['1']."-".$tr['0'];

  return $tarih1;

}

function  KategoriListesi($id = 0,$secim = 0,$tire = 0,$select = ''){
   $sorgu = DB::where('parentid',$id,'and')->where('status','1')->get('products_category')->result();
   $se = '';
   foreach ($sorgu as $key) {
    if ($key->parentid == 0) { 
      $tire = 0;
      $style = 'color:#000;font-weight:bolder;font-size:13px;';
      $se = 'disabled';
    }
    if ($secim != $key->parentid){
      $secim = $key->parentid;
      $style = 'color:#000';
      $tire++;
    }

    if($key->id == $select){$sel = 'selected';}else{$sel='';}
    echo '<option value="'.$key->id.'" style="'.$style.'"'.$se.$sel.' >'.str_repeat('-&nbsp;',$tire).$key->name."</option>";
    KategoriListesi($key->id,$secim,$tire,$select);       
  }
}

function  KategoriTablosu($id = 0,$secim = 0,$tire = 0){
    $sorgu = DB::where('parentid',$id)->get('products_category')->result();
   
    foreach ($sorgu as $key) {
        if ($key->parentid == 0) {
            $tire = 0;
            $style = 'color:#000;font-weight:bolder;font-size:13px;';
           

        }

        if ($secim != $key->parentid){
            $secim = $key->parentid;
             $style = 'color:#000';
            $tire++;
        }

        $duzenle ='/panel/category/edit/'.$key->id;
        $sil = '/panel/category/delete/'.$key->id;

        echo '<tr>
        <td style="'.$style.'">'.str_repeat('-&nbsp;',$tire).$key->name.'</td>
        <td>'.$key->status.'</td>
          <td class="islemler" style="text-align: center;"> 
             <a href="'.$duzenle.'"><button class="btn btn-success"><i class="icon-pencil"></i></button></a>
             <a href="'.$sil.'"><button class="btn btn-danger"><i class="icon-remove"></i></button></a>
                                                                  
           
          </td>

        </tr>';
        KategoriTablosu($key->id,$secim,$tire);
    }
  }

  function  yonetimKategori($id = 0,$secim = 0,$tire = 0){
    $sorgu = DB::where('parentid',$id)->get('products_category')->result();
   
    foreach ($sorgu as $key) {
        if ($key->parentid == 0) {
            $tire = 0;
            $style = 'color:#000;font-weight:bolder;font-size:13px;';
        }

        if ($secim != $key->parentid){
            $secim = $key->parentid;
             $style = 'color:#000';
            $tire++;
        }
        
        echo '<option value="'.$key->id.'" style="'.$style.'">'.str_repeat('-&nbsp;',$tire).$key->name."</option>";
        yonetimKategori($key->id,$secim,$tire);
    }
  }
 function menu($parent = 0){
    return DB::where('parentid',$parent,'and')->where('status','1')->get('products_category')->result();
  }

   function menu1($parent = 0){
    return DB::get('products_category')->result();
  }

  function cat_menu($parentid = 0,$ulclass='cat_menu'){
      $query = DB::where('parentid',$parentid)->get('products_category')->result();
      echo '<ul class="'.$ulclass.'">';

        $p = '';
      foreach ($query as $key ) {

        if (menu1()->id == $key->parentid) {
          $p = '<i class="fas fa-chevron-right ml-auto"></i>';
        }

        echo '<li class="hassubs"><a href="#">'.$key->name.$p.'</a>'; 
        cat_menu($key->id,'');
      }

      echo '</li></ul>';


  }

function userName($id){
  return DB::where('id', $id)->select('name')->get('user')->value();
}

/* Slider Fonksiyonları */
function sliderResult(){
  return DB::sliderResult();
}