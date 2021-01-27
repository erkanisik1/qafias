
<?php import::view('header'); ?>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
<div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>controller ve view dosyasını otomatik oluşturan sistem</h5>
        </div>
        <div class="widget-content nopadding">
          <form action="#" method="post" class="form-horizontal">

            <div class="control-group">
              <label class="control-label"> Controller Adını yazın : </label>
              <div class="controls">
                <input type="text" class="span11" name="name" placeholder="( vereceğiniz isim Controller Model View adı olacaktır ) " required="">
              </div>
            </div>

           

            <div class="control-group">
            	<label class="control-label">Tabloyu seçin :</label>
            	<div class="controls">
            		
            		<select name="table" id="" class="span11">
            			<option value="">Seçin</option>
            			<?php foreach (DBTool::listTables() as $key ): ?>
            				<option value="<?php echo trim($key); ?>"><?php echo trim($key); ?></option>
            			<?php endforeach ?>

            		</select>
            	</div>
            </div>

            <div class="control-group">
              <label class="control-label">Oluştur :</label>
              <div class="controls">
                 <label><input type="checkbox" name="controller" value="1"  />Controller Oluştur</label>
                <label><input type="checkbox" name="model" value="1"  />Model Oluştur</label>
                <label><input type="checkbox" name="view" value="1" />View Oluştur</label>
              
              </div>
            </div>


      
            <div class="form-actions">
              <button type="submit" class="btn btn-success btn-block">Oluştur</button>
            </div>
          
        </div>
      </div>

</div>
</div>
</div>


</form>
			
			

 <?php import::view('footer'); ?>		