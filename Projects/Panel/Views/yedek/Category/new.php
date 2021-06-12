<?php IMPORT::view('header'); ?>
<div class="widget-box">
    <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
      	<h5>YENİ KATEGORİ </h5>
    </div>
   	<div class="widget-content nopadding">
       	<form action="" method="post" class="form-horizontal">
            <div class="control-group">
                <label class="control-label">Üst Kategori :</label>
                <div class="controls">
	               	<select name="parentid" id="" class="span11">
		               		<option value="0">ANA KATEGORİ</option>
		               		<?php echo yonetimKategori(); ?>
	               	</select>
                </div>
            </div>
          	<div class="control-group">
                <label class="control-label">Kategori Adı:</label>
                <div class="controls">
		            <input type="text" class="span11" name="category_name" placeholder="Yeni Kategori adını yazın">
		        </div>
		    </div>
            <div class="control-group">
                <label class="control-label">Kategori Resmi:</label>
                <div class="controls">
                <input type="file" class="span11" name="img" placeholder="Yeni Kategori adını yazın">
            </div>
        </div>
	        <div class="form-actions">
	            <button type="submit" class="btn btn-primary btn-block">Kategoriyi Kaydet</button>
	        </div>
    	</form>
    </div>
</div> 
<?php Import::view('footer'); ?>