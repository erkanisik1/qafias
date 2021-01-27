		<div class="widget-box">
	        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
	          <h5>Ürün listesi</h5>

	          <div class="pull-right" style="margin:5px;"><a href="/store/products/new "><button>YENİ ÜRÜN EKLE</button> </a></div>
	        </div>
        	<div class="widget-content nopadding">


        	<table class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th width="10">#</th>
                  <th width="10">ID</th>
                  <th width="60">RESİM</th>
                  <th width="100">E.Tarih</th>
                  <th>ÜRÜN ADI</th>
                  <th width="100">KATEGORİ</th>
                  <th width="10">ADET</th>
                  <th width="50">FİYAT</th>
                  <th width="120">İŞLEMLER</th>
                </tr>
              </thead>
              <tbody>

				{[ $a=0;]} 
        @foreach (store_products() as $key ) 
        {[$a = $a + 1;]}
                <tr>
                	<td>{[ echo $a; ]} </td>
                  <td>{[ echo $key->id; ]}</td>
                  <td><img src="/{[ echo mainimage($key->id); ]}" alt="" width="100"></td>
                  <td>{[ echo tcevir($key->create_date) ]}</td>
                  <td>{[ echo $key->title ]}</td>
                  <td>{[ echo category($key->category)->name; ]}</td>
                  <td>{[ echo $key->stock_quantity; ]}</td>
                  <td>{[ echo $key->price.' TL'; ]}</td>
                
                  <td  style="text-align: center;">
                    <a href="/store/products/edit/{[ echo $key->id; ]}"><button class="btn btn-primary align-middle"> Düzenle </button></a>
                    <a href="/store/products/delete/{[ echo $key->id; ]}" onclick="return confirm('Bu kaydı silmek istediğinize eminmisiniz?');"><button class="btn btn-danger"> Sil </button></a>
                  </td>
                </tr>
              @endforeach           

              </tbody>

            </table>
        	</div>
        </div>