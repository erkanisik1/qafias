<form action="" method="post" class="form-horizontal">
<div class="widget-box">
        <div class="control-group">
	        <label class="control-label">Marka adı :</label>
	        <div class="controls">
	          	<input type="text" class="span11" name="brand" placeholder="Marka adını Yazın...">
	        </div>
	    </div>
 
<div class="form-actions">
	<input type="hidden" name="store_id" value="{[ echo Session::select('STOREID'); ]}">
              <button id="SaveAccount" type="submit" class="btn btn-success">KAYDET</button>
            </div>

   </form>

