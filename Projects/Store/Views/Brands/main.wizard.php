
	<div class="widget-box">
	        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
	          <h5>Marka listesi</h5>

	          <div class="pull-right" style="margin:5px;"><a href="/store/brands/new "><button>YENİ MARKA EKLE</button> </a></div>
	        </div>
        	<div class="widget-content nopadding">
           	<table class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th width="10">#</th>
                  <th width="10">ID</th>
                  <th width="60">MARKA</th>
                  <th width="100">DURUM</th>
                  <th width="1">İŞLEMLER</th>
                </tr>
              </thead>
              <tbody>

				{[ $a=0; ]} 
        @foreach (store_brands(Session::select('STOREID')) as $key )
        {[ $a = $a + 1;]}
                <tr>
                	<td>{[ echo $a; ]} </td>
                  <td>{[ echo $key->id; ]}</td>
                 
                <td>{[ echo $key->brand; ]}</td>
                <td>{[ echo $key->status == 1?'AKTİF':'PASİF'; ]}</td>
                  <td style="text-align: center;">
                    <a href="/store/brand/edit/{[ echo $key->id; ]}"><button class="btn btn-primary">Düzenle</button></a>
                    <a href="/store/brand/delete/{[ echo $key->id; ]}" onclick="return confirm('Bu kaydı silmek istediğinize eminmisiniz?');"><button class="btn btn-danger">Sil</button></a>
                  </td>
                </tr>
          @endforeach         

              </tbody>

            </table>
        	</div>
        </div>

