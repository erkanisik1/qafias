<?php IMPORT::view('header'); ?>

<div id="content-header">
  <div id="breadcrumb"> <a href="index.html" class="tip-bottom" data-original-title="Go to Home"><i class="icon-home"></i> YÖNETİM PANELİ</a> <a href="#" class="tip-bottom" data-original-title="">MARKA</a><a href="" class="current">YENİ</a></div>
  
</div>

<div class="container-fluid">
	<div class="row-fluid">
		<div class="widget-box">
	        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
	        	
	        </div>
        	<div class="widget-content nopadding">
	        	<form action="" method="post" class="form-horizontal">

		            
	            	<div class="control-group">
		              <label class="control-label">Marka Adı:</label>
		              <div class="controls">
		                <input type="text" class="span11" name="markaAdi" placeholder="Marka adı">
		              </div>
		            </div>

            <div class="form-actions">
              <button type="submit" class="btn btn-success">Markayı Kaydet</button>
            </div>
	            </form>
        	</div>
        </div>
    </div>
</div>



<?php Import::view('footer'); ?>