
		<div class="widget-box">
	        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
	          <h5>Sipariş Listesi</h5>
            </div>
        	<div class="widget-content nopadding">
        	<table class="table table-bordered table-striped">
              <thead>
                <tr>
                <th width="10">#</th>
                <th width="10">ID</th>
                  <th width="60">S.Tarih</th>
                  <th>Ürün Adı</th>
                  <th>Müşteri Adı</th>
                  <th width="250">İşlemler</th>
                </tr>
              </thead>
              <tbody>

				{[ $a=0; ]} 
        @foreach (order() as $key ) 
        {[ $a = $a + 1;]}
                <tr>
                	<td>{{$a}} </td>
                	<td>{{$key->id}}</td>
                  <td>{{tcevir($key->createDate)}}</td>
                  <td>{{productName($key->product_id)}}</td>
                  <td>{{userName($key->user_id)}}</td>
                
                  <td class="" style="text-align: center;">
                    <a href="/store/orders/detay/{[ echo $key->id; ]}"><button class="btn btn-primary">Sipariş Detayı</button></a>
                    <a href="/store/orders/edit/{[ echo $key->id; ]}">
                      <button class="btn btn-warning"><i class="icon-pencil"></i></button></a>
                    <a href="/store/orders/delete/{[ echo $key->id; ]}" onclick="return confirm('Bu kaydı silmek istediğinize eminmisiniz?');">
                      <button class="btn btn-danger"><i class="icon-remove"></i></button></a>
                  </td>
                </tr>
               @endforeach
              

              </tbody>

            </table>
        	</div>
        </div>
