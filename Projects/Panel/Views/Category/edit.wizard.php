<div class="widget-box">
    <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
      	<h5>KATEGORİ DÜZENLE</h5>
    </div>
   	<div class="widget-content nopadding">
       	<form action="" method="post" class="form-horizontal">


           <div class="control-group">
                <label class="control-label">Üst Kategori :</label>
                <div class="controls">
                  
                  <select name="category" class="span11">

                      <option value="0">ANA KATEGORİ</option>

                      {[ echo yonetimKategori(); ]}

                  </select>
                </div>
            </div>


            <div class="control-group">
                <label class="control-label">Kategori Resmi:</label>
                <div class="controls">
                  <img src="/upload/products_category/{[ echo $edit->img ]}" alt="" width="100">
                
            </div>
           
          	<div class="control-group">
                <label class="control-label">Kategori Adı:</label>
                <div class="controls">
		            <input type="text" class="span11" name="category_name" value="{[ echo $edit->name; ]}">
		        </div>
              <div class="control-group">
                <label class="control-label">Kategori DURUMU:</label>
                <div class="controls">
                <select name="status" id="">
                  <option value="1" {[ echo $edit->status == 1?'selected':'0;' ]}>Aktif</option>
                  <option value="0" {[ echo $edit->status == 0?'selected':'0;' ]}>Pasif</option>
                </select>
            </div>
		    </div>
	        <div class="form-actions">
            <input type="hidden" name="id" value="{[ echo $edit->id; ]}">
	            <button type="submit" class="btn btn-success">Kategoriyi Kaydet</button>
	        </div>
    	</form>
    </div>
</div> 
