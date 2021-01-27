

<form action="" method="post" class="form-vertical" enctype="multipart/form-data">
<button class="btn btn-primary" type="submit"><i class="icon-save"></i></button>
<div class="widget-box">
	<div class="widget-title">
		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#tab1">Genel Bilgiler</a></li>
			<li><a data-toggle="tab" href="#tab2">Seçenekler</a></li>
			<li><a data-toggle="tab" href="#tab3">Resimler</a></li>
		</ul>
	</div>
	<div class="widget-content tab-content">
		<!-- Genel Form -->
		<div id="tab1" class="tab-pane active">
				<div class="control-group">
					<label class="control-label">Kategori Seç :</label>
					<div class="controls">
						<select name="category" class="span12">
							<option value="">Kategori seçin...</option>
							{[  KategoriListesi(0,0,0,product_detail($id)->category); ]}
						</select>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Ürün adı :</label>
					<div class="controls">
						<input type="text" class="span12" name="title" value="{[ echo product_detail($id)->title ]}">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Ürün alt başlık :</label>
					<div class="controls">
						<input type="text" class="span12" name="subtitle" value="{[ echo product_detail($id)->subtitle ]}">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Marka :</label>
					<div class="controls">
						<select name="brand" class="span12">
							<option value="0">Seçiniz...</option>
							@foreach (store_brands(session::select('storeid')) as $key )
								<option value="{[ echo $key->id; ]}" {[ selected($key->id,product_detail($id)->brand) ]} >{[ echo $key->brand; ]}</option>
							@endforeach

						</select>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Anahtar Kelimeler :</label>
					<div class="controls">
						<input type="text" class="span12" name="keyword" value="{[ echo product_detail($id)->keyword ]}">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Kısa Açıklama :</label>
					<div class="controls">
						<input type="text" class="span12" name="description" value="{[ echo product_detail($id)->description ]}">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Ürün Açıklaması :</label>
					<div class="controls">
						<textarea class="span12" id="editor" rows="20" name="content">{[ echo product_detail($id)->content ]}</textarea>
					</div>
				</div>
	
				<div class="control-group">
					<label class="control-label">Stok kodu :</label>
					<div class="controls">
						<input type="text" class="span12" name="stock_code" value="{[ echo product_detail($id)->stock_code ]}"> 

					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Stok Adeti :</label>
					<div class="controls">
						<input type="text" class="span12" name="stock_quantity" value="{[ echo product_detail($id)->stock_quantity ]}">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Ürün fiyatı :</label>
					<div class="controls">
						<input type="text" class="span12" name="price" value="{[ echo product_detail($id)->price ]}">
					</div>
				</div>
			    <div class="control-group">
			    	<label class="control-label">Kargo Durumu :</label>
			    	<div class="controls">
			    		<select name="cargo_payment" class="span12">
			    			<option value="0" selected>Seçiniz....</option>
			    			<option value="1" {[ selected('1',product_detail($id)->cargo_payment) ]}>Alıcı Öder</option>
			    			<option value="2" {[ selected('2',product_detail($id)->cargo_payment) ]}>Satıcı Öder ( Ücretsiz kargo )</option>			    	
			    		</select>
			    	</div>
			    </div>		
			    <div class="control-group">
			    	<label class="control-label">Kargo Firması :</label>
			    	<div class="controls">
			    		<select name="cargo_company" class="span12">
			    			<option value="0" selected>Seçiniz....</option>
			    			@foreach (cargo_list() as $key )
			    				<option value="{[ echo $key->id ]}" {[ selected($key->id,product_detail($id)->cargo_company) ]}>{[ echo $key->name ]}</option>
			    			@endforeach
			    		</select>
			    		<input type="hidden" name="id" value="{[ echo $id; ]}">
			    	</div>
			    </div>			
			</div>
			<!-- Genel Form -->
			<!-- Seçenekler Form -->            
			<div id="tab2" class="tab-pane"> 
				<div class="control-group">
					<label class="control-label">Ürün Seçenekleri :</label>
					<div class="controls">
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>SEÇENEK ADI</th>
									<th>SEÇENEK DEĞERLERİ</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								{[ $a = "0"; ]}
								@foreach (secenekler($id) as $key)
								{[ $a = $a+1;]}
								<tr id="{[ echo $key->id ]}">
									<td><input type="text" class="span12" id="label" name="label[]" value="{[ echo $key->label ]}" style="margin-bottom: 5px;"></td>
									<td>
										<input type="text" class="span12" id="key" name="secenek[]" value="{[ echo $key->secenek ]}">

										<input type="hidden" id="product_id" name="secid[]" value="{[ echo $key->id ]}">
									</td>
									<td><button class="btn btn-danger delete"  type="button" data-id="{[ echo $key->id ]}"><i class="icon-trash"></i></button></td>
								</tr>
							@endforeach
						</tbody>
					</table>
				</div>  
			</div>
			<div class="control-group">
				<div class="controls">
					Seçenek Ekle :	<button id="secenek" type="button">+</button>
					<div class="secenekler span12"></div>
				</div>
			</div>  
		</div>
		<!-- /Seçenekler Form -->
		
		<!-- Resimler Form -->  
		<div id="tab3" class="tab-pane">  
			<div class="control-group">
				<div class="controls">
					<label class="control-label">Yüklü Resimler :</label>
						@foreach (product_images($id) as $key )
							<div style="border:1px solid #ccc; width: 150px;padding: 5px; float: left; margin-right: 5px;" id="{[ echo $key->id; ]}">
							<img src="/{[ echo $key->link; ]}" alt="" width="150" >	<br>
							<button type="button" class="btn btn-danger delete_img" data-id="{[ echo $key->id; ]}"><i class="icon-trash"></i> </button>
							</div>
						@endforeach
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Resim Yükle</label>
				<div class="controls">
					<div class="preview"></div>
					<input type="file" name="images[]" class="urunresim" id="urunresim" multiple="" onchange="verioku()">
				</div>
			</div>


		</div>
		<!-- /Resimler Form -->
	</div>
</form>