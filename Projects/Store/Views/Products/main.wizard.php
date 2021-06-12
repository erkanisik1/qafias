		<a href="/store/products/new "><button class="btn btn-primary">YENİ ÜRÜN EKLE</button> </a>
<style>
  .kategori{
    margin:10px;
  }
</style>

    <div class="widget-box">
	        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
	          <h5>Ürün listesi</h5>

	          
	        </div>
        	<div class="widget-content nopadding">
            <div class="kategori">
            <form action="" method="post">
                  
          <select name="kategori"  onchange='submit()'>
            <option value="0">Kategori Seçiniz...</option>
          @foreach ($storeKategori as $key )
                <option value="{{$key->category}}">{{categoryName($key->category)}}</option>
          @endforeach
            
          </select>
      

            </form>
</div>

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
                  <th width="150">İŞLEMLER</th>
                </tr>
              </thead>
              <tbody>

				{[ $a=0;]} 
        @foreach (storeProducts($kategori) as $key ) 
        {[$a = $a + 1;]}
                <tr>
                	<td>{{$a}} </td>
                  <td>{{$key->id}}</td>
                  <td><img src="/{{mainimage($key->id)}}" alt="" width="100"></td>
                  <td>{{tcevir($key->create_date)}}</td>
                  <td>{{$key->title}}</td>
                  <td>{{category($key->category)->name}}</td>
                  <td>{{$key->stock_quantity}}</td>
                  <td>{{$key->price.' TL'}}</td>
                
                  <td  style="text-align: center;">
                    <a href="/store/products/edit/{{$key->id}}"><button class="btn btn-primary align-middle"> Düzenle </button></a>
                    <a href="/store/products/delete/{{$key->id}}" onclick="return confirm('Bu kaydı silmek istediğinize eminmisiniz?');"><button class="btn btn-danger"> Sil </button></a>
                  </td>
                </tr>
              @endforeach           

              </tbody>

            </table>
        	</div>
        </div>