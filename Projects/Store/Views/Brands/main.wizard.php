<a href="/store/brands/new "><button class="btn btn-primary">YENİ MARKA EKLE</button> </a>
	<div class="widget-box">
	        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
	          <h5>Marka listesi</h5>

	          
	        </div>
        	<div class="widget-content nopadding">
           	<table class="table table-bordered ">
              <thead>
                <tr>
                  <th width="10">#</th>
                  <th width="10" >ID</th>
                  <th >MARKA</th>
                  <th width="20" >DURUM</th>
                  <th width="130" >İŞLEMLER</th>
                </tr>
              </thead>
              <tbody>

				{[ $a=0; ]} 
        @foreach (store_brands(Session::select('STOREID')) as $key )
        {[ $a = $a + 1;]}
                <tr>
                	<td>{{$a}} </td>
                  <td>{{$key->id}}</td>
                 
                <td>{{$key->brand}}</td>
                <td>{{$key->status == 1?'AKTİF':'PASİF'}}</td>
                  <td>
                    <a href="/store/brands/edit/{{$key->id}}"><button class="btn btn-primary">Düzenle</button></a>
                    <a href="/store/brands/delete/{{$key->id}}" onclick="return confirm('Bu kaydı silmek istediğinize eminmisiniz?');"><button class="btn btn-danger">Sil</button></a>
                  </td>
                </tr>
          @endforeach         

              </tbody>

            </table>
        	</div>
        </div>

