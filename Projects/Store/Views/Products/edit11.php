<?php IMPORT::view('header'); ?>
<div id="content-header">
  <div id="breadcrumb"> 
  	<a href="<?php echo baseUrl(); ?>magaza" class="tip-bottom"><i class="icon-home"></i> YÖNETİM PANELİ</a> 
  	<a href="<?php echo baseUrl(); ?>magaza/urunler" class="tip-bottom" data-original-title="">ÜRÜNLER</a> 
  	<a href="#" class="current">ÜRÜN DÜZENLE</a> 
  </div>
</div>

<div class="container-fluid">
	<div class="row-fluid">
		<div class="widget-box">
	        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
	          <h5>Ürün bilgileri</h5>	
	        </div>
	        <div class="widget-content nopadding">
	          	<form action="" method="post" class="form-horizontal" enctype="multipart/form-data">

	          		<div class="control-group">
			            <label class="control-label">Ürün Kategorisi :</label>
			            <div class="controls">
			            	<select name="kategori">
			            		<option value="">Kategori seçin...</option>
			            		<?php  Myfunc::KategoriListesi(0,0,0,$dzn->kategori); ?>
			            	</select>
			            </div>
		            </div>

	          		<div class="control-group">
			            <label class="control-label">Ürün adı :</label>
			            <div class="controls">
			            	<input type="text" class="span11" name="baslik" value="<?php echo $dzn->title ?> " placeholder="Ürün adı">
			            </div>
		            </div>

		                 <div class="control-group">
			            <label class="control-label">Keyword :</label>
			            <div class="controls">
			            	<input type="text" class="span11" name="keyword" value="<?php echo $dzn->keyword; ?> " placeholder="kelimelerin sonuna virgül ekleyerek yazın ">
			            </div>
		            </div>

		            <div class="control-group">
			            <label class="control-label">Description :</label>
			            <div class="controls">
			            	<input type="text" class="span11" name="description" value="<?php echo $dzn->description; ?> " placeholder="Ürününüz hakkında kısa bir açıklama yazın.. ">
			            </div>
		            </div>

		            <div class="control-group">
			            <label class="control-label">Ürün alt başlık :</label>
			            <div class="controls">
			                <input type="text" class="span11" name="altbaslik" value="<?php echo $dzn->title_seo ?>" placeholder="Ürün alt başlık">
			            </div>
		            </div>

		            <div class="control-group">
			            <label class="control-label">Ürün Açıklaması :</label>
			            <div class="controls">
		              		<textarea class="span11" id="editor" rows="20" name="aciklama"><?php echo $dzn->content ?></textarea>
		            	</div>
		            </div>

		            <div class="control-group">
			            <label class="control-label">Ürün fiyatı :</label>
			            <div class="controls">
			                <input type="text" class="span11" name="fiyat" value="<?php echo $dzn->price ?>" placeholder="Ürün KDV dahil fiyatını yazın...">
			            </div>
		            </div>

		          

		             <div class="control-group">
			            <label class="control-label">Stok kodu :</label>
			            <div class="controls">
			            	<input type="text" class="span5" name="stokkodu" value="<?php echo $dzn->stock_code ?>" placeholder="Stok kodunu yazın..."> Stok adet: <input type="text" class="span6" name="stokadet" value="<?php echo $dzn->stock_quantity ?>" placeholder="Stok adetini yazın...">
			            </div>
		            </div>

		             <div class="control-group">
		             	<label class="control-label">Yüklü Resimler: </label>
		             	<div class="controls">
		             		<?php foreach ($foto as $ft) {?>

							<div style="width: 150px;margin-right: 5px;float: left; position: relative;padding: 5px; border:1px solid #eee; ">
							<img src="/<?php echo $ft->link; ?> " alt="" width="150">
							<p style="bottom:0; position:absolute; "><a href="" id="imgdelete" data-id="<?php echo $ft->id; ?>">[ Sil ]</a></p>	
							</div>
		             		


		             		<?php } ?>
		             	</div>
		             </div>

		             <div class="control-group">
              <label class="control-label">Yeni Resim
              <div class="controls">
               <div class="preview"></div>
                <input type="file" name="resim[]" class="urunresim" id="urunresim" multiple onChange="verioku()">
              </div>
            </div>
          
            <div class="form-actions">
            	<input type="hidden" name="urunid" value="<?php echo $dzn->urunID; ?>">
              <button type="submit" class="btn btn-primary btn-block">ÜRÜNÜ GÜNCELLE</button>
            </div>

	          </form>
	        </div>
        </div>

	</div>
</div>


<?php Import::view('footer'); ?>