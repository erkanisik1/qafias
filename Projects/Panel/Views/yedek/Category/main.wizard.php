@view('Category/modal')


		<div class="widget-box">
	        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
	          <h5>KATEGORİLER</h5>

	          <div class="pull-right" style="margin:5px;">
              <a href="/panel/category/new"><button type="button" class="btn btn-primary" >YENİ KATEGORİ</button></a>
            </div>
	        </div>
        	<div class="widget-content nopadding">
        	<table class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>Kategoriler</th>
                  <th width="80">İşlemler</th>
                </tr>
              </thead>
              <tbody>
               
                  {{KategoriTablosu()}}
               
              

              </tbody>

            </table>
        	</div>
        </div>
  

