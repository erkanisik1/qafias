<div class="container-fluid">
<div class="quick-actions_homepage">
      <ul class="quick-actions">
        <li class="bg_lb"> <a href="/panel/store/onaybekleyen"> <i class="icon-dashboard"></i> <span class="label label-important">{{onayBekleyenDukkanSayisi()}}</span> Onay bekleyen Mağazalar </a> </li>
        <li class="bg_lg span3"> <a href="/panel/store/new "> <i class="icon-signal"></i> Yeni Mağaza Ekle</a> </li>
        <li class="bg_lg span3"> <a href="/panel/store/speed "> <i class="icon-signal"></i> hızlı Mağaza Ekle</a> </li>
       
      </ul>
    </div>
</div>
<div class="widget-box">
	        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
	          <h5>Mağaza listesi</h5>

	         
	        </div>
        	<div class="widget-content nopadding">
          
        	<table class="table table-bordered table-striped">
              <thead>
                <tr>
                <th width="60">Tarih</th>
                	<th>Mağaza Adı</th>
                  <th>Adresi</th>
                  <th>Yetkili</th>
                  <th width="90">Telefon</th> 
                  <th>Mail</th>
                  <th>Durum</th>
                  <th >İşlemler</th>
                </tr>
              </thead>
              <tbody>
               @foreach (storeList() as $key ) 
               	{[ $st = status($key->status)]}
                <tr>
                	<td>{{tcevir($key->created_date)}}</td>
                	<td>{{$key->shop_name}}</td>
                  
                  <td>{{$key->address}}</td>
                  <td>{{$key->authorized}}</td>
                  <td>{{$key->authorized_tel}}</td>
                  <td>{{$key->mail}}</td>
                  <td class="{{$st['clss']}}">{{$st['txt']}}</td>
                  <td class="islemler" style="text-align: center;">
                    <a href="/panel/store/send/{{$key->id}}" title="E-Posta Gönder"><button class="btn btn-primary"><i class="icon-envelope icon-large"></i></button></a>
                    <a href="/panel/store/detail/{{$key->id}}" title="Mağaza Detaylarını Gör"><button class="btn btn-primary"><i class="icon-eye-open icon-large"></i></button></a>
                    <a href="/panel/store/edit/{{$key->id}}" title="Mağazayı Düzenle"><button class="btn btn-success"><i class="icon-pencil icon-large"></i></button></a>
                    <a href="/panel/store/delete/{{$key->id}}" onclick="return confirm('Mağazayı silmek üzereseniz. Silmek istediğinizden eminmisiniz?')" title="Mağazayı Sil"><button class="btn btn-danger"><i class="icon-remove icon-large"></i></button></a>
                  </td>
                </tr>
           @endforeach
              

              </tbody>

            </table>
        	</div>
        </div>