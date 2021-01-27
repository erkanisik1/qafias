<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  
  <div class="modal-dialog">
    <form action="" method="post">
      <!-- Modal content-->
      <div class="modal-content ">
        <div class="modal-header ">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">YENİ MARKA EKLE </h4>
        </div>
        <div class="modal-body">
           <input type="text" class="span5" name="markaAdi" placeholder="Marka adını yazın">
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-default">KAYDET</button>
        </div>
      </div>
    </form>
  </div>
</div>



		<div class="widget-box">
	        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
	         

	          <div class="pull-right" style="margin:5px;"><button type="button" data-toggle="modal" data-target="#myModal">YENİ MARKA</button></div>
	        </div>
        	<div class="widget-content nopadding">
        	<table class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>Marka</th>
                  <th>Dükkan</th>
                  <th width="80">İşlemler</th>
                </tr>
              </thead>
              <tbody>
               @foreach (brand() as $key )
                <tr>
                  <td>{[ echo $key->brand ]}</td>
                  <td>{[ echo storeName($key->store_id);]}</td>
                  <td class="islemler" style="text-align: center;">
                    <a href="/panel/marka/duzenle/{[ echo $key->id; ]}"><i class="icon-pencil"></i></a>
                    <a href="/panel/marka/sil/{[ echo $key->id; ]}"><i class="icon-remove"></i></a>
                  </td>
                </tr>
               @endforeach
              

              </tbody>

            </table>
        	</div>
        </div>