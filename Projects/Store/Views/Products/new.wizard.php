{{	DB::error()}}
 <form action="" method="post" class="form-horizontal" id="firmakjayit" enctype="multipart/form-data">
<div class="widget-box">
	<fieldset>
        <legend><div class="formbaslik">Ürün Kategorisi</div></legend>
        <div class="control-group">
        	<label class="control-label">Kategori Seç :</label>
          	<div class="controls">
           		<select name="category" class="span11">
			    	<option value="">Kategori seçin...</option>
			    	{[  KategoriListesi(); ]}
				</select>
          	</div>
        </div>
    </fieldset> 

    <fieldset>
      	<legend><div class="formbaslik">Ürün Bilgileri</div></legend>
        <div class="control-group">
	        <label class="control-label">Ürün adı :</label>
	        <div class="controls">
	          	<input type="text" class="span11" name="title" placeholder="Ürün adı">
	        </div>
	    </div>

	    <div class="control-group">
		    <label class="control-label">Ürün alt başlık :</label>
		    <div class="controls">
		        <input type="text" class="span11" name="subtitle" placeholder="Ürün alt başlık">
		    </div>
		</div>

		<div class="control-group">
		    <label class="control-label">Marka :</label>
		    <div class="controls">
		    	<select name="brand" class="span11">
		    		<option value="0">Seçiniz...</option>
		    		@foreach (store_brands(session::select('STOREID')) as $key ): ]}
		    			<option value="{[ echo $key->id; ]}">{[ echo $key->brand; ]}</option>
		    		@endforeach ]}
		    		
		    	</select>
		    </div>
		</div>


        <div class="control-group">
	        <label class="control-label">Anahtar Kelimeler :</label>
	        <div class="controls">
	          	<input type="text" class="span11" name="keyword" placeholder="kelimelerin sonuna virgül ekleyerek yazın ">
	        </div>
	    </div>

	    <div class="control-group">
	        <label class="control-label">Kısa Açıklama :</label>
		    <div class="controls">
			  	<input type="text" class="span11" name="description" placeholder="Ürününüz hakkında kısa bir açıklama yazın.. ">
			</div>
		</div>

		<div class="control-group">
		    <label class="control-label">Ürün Açıklaması :</label>
		   <div class="controls">
		   		<textarea class="textarea_editor span11" id="editor" rows="20" name="content"></textarea>
		   	</div>
		</div>

    </fieldset>
 
    <fieldset>
    	<legend><div class="formbaslik">Diğer Ayarlar</div></legend>
    	<div class="control-group">
			  <label class="control-label">Seçenek Ekle :</label>
		    <div class="controls">
		       	<button id="secenek" type="button">+</button>
		       	<div class="secenekler span12"></div>
			</div>
        </div>
                   
    </fieldset>

    <fieldset>
    	<legend><div class="formbaslik">Stok bilgileri + Kargo Bilgileri</div></legend>

		<div class="control-group">
		    <label class="control-label">Stok kodu :</label>
		    <div class="controls">
		       	<input type="text" class="span11" name="stock_code" placeholder="Stok kodunu yazın..."> 
		       	
			</div>
		</div>

		<div class="control-group">
		    <label class="control-label">Stok Adeti :</label>
		    <div class="controls">
		       	<input type="text" class="span11" name="stock_quantity" placeholder="Stok adetini yazın...">
			</div>
		</div>

    	<div class="control-group">
			<label class="control-label">Ürün fiyatı :</label>
			<div class="controls">
			    <input type="text" class="span11" name="price" placeholder="Ürün KDV dahil fiyatını yazın...">
			</div>
		</div>

        <div class="control-group">
            <label class="control-label">Ödeme Şekli</label>
            <div class="controls">
            <p>İlk üç aylık ücretsiz kullanımda olan satıcılar havale/eft seçeneği seçmesi gerekiyor</p>
                <select name="payment_method" class="span11">
                    <option value="">Seçiniz</option>
                    <option value="Kredi Kartı">Kredi Kartı</option>
                    <option value="Havale / Eft">Havale / Eft</option>
                </select>
            </div>
        </div>

		<div class="control-group">
			<label class="control-label">Kargo Durumu :</label>
			<div class="controls">
			    <select name="cargo_payment" class="span11">
			    	<option value="0" selected>Seçiniz....</option>
			    	<option value="1">Alıcı Öder</option>
			    	<option value="2">Satıcı Öder ( Ücretsiz kargo )</option>			    	
			    </select>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label">Kargo Firması :</label>
			<div class="controls">
				<select name="cargo_company" class="span11">
			    	<option value="0" selected>Seçiniz....</option>
			    	@foreach (cargo_list() as $key )
			    		<option value="{[ echo $key->id ]}">{[ echo $key->name ]}</option>
			    	@endforeach
			    </select>
			</div>
		</div>
    </fieldset>

    <fieldset>
    	<legend>
    		<div class="formbaslik">Ürün Resim Yükleme</div>
    	</legend>
<!-- 
<div class="control-group">
		    <label class="control-label">Resim 1 :</label>
		    <div class="controls">
		       	<input type="text" class="span11" name="resim[]" placeholder="1.Resim linkini yazın..."> 
		       	
			</div>
		</div>

		<div class="control-group">
		    <label class="control-label">Resim 2 :</label>
		    <div class="controls">
		       	<input type="text" class="span11" name="resim[]" placeholder="2.Resim linkini yazın...">
			</div>
		</div>

    	<div class="control-group">
			<label class="control-label">Resim 3  :</label>
			<div class="controls">
			    <input type="text" class="span11" name="resim[]" placeholder="3.Resim linkini yazın...">
			</div>
		</div>

		<div class="control-group">
		    <label class="control-label">Resim 4 :</label>
		    <div class="controls">
		       	<input type="text" class="span11" name="resim[]" placeholder="4.Resim linkini yazın..."> 
		       	
			</div>
		</div>

		<div class="control-group">
		    <label class="control-label">Resim 5 :</label>
		    <div class="controls">
		       	<input type="text" class="span11" name="resim[]" placeholder="5.Resim linkini yazın...">
			</div>
		</div>
		 -->
  
    	
    	<div class="control-group">
              <label class="control-label">Resim yükleme alanı </label>
              <div class="controls">

              <div class="preview"></div>
                <input type="file" name="images[]" class="urunresim" id="urunresim" multiple onChange="verioku()"> ( En fazla 5 resim ekleyebilirsiniz )
              </div>
            </div>

    </fieldset>





	<div class="form-actions">
		<button id="SaveAccount" type="submit" class="btn btn-success">KAYDET</button>
	</div>
</form>
