<div class="container-fluid">
<div class="quick-actions_homepage">
      <ul class="quick-actions">
        <li class="bg_lb"> <a href=""> <i class="icon-dashboard"></i> <span class="label label-important">0</span> Onay bekleyen Mağazalar </a> </li>
        <li class="bg_lg span3"> <a href="/panel/store/new "> <i class="icon-signal"></i> Yeni Mağaza Ekle</a> </li>
        <li class="bg_lg span3"> <a href="/panel/store/speed "> <i class="icon-signal"></i> hızlı Mağaza Ekle</a> </li>
       
      </ul>
    </div>
</div>
<div class="widget-box">
	        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
	          <h5>Mağaza listesi</h5>

	          <div class="pull-right" style="margin:5px;"><a href="/panel/store/new "><button>YENİ MAĞAZA</button> </a></div>
	        </div>
        	<div class="widget-content nopadding">
          
        	<table class="table table-bordered table-striped">
              <thead>
                <tr>
                <th width="60">Tarih</th>
                	<th>Mağaza Adı</th>
                  <th>Firma Adı</th>
                  <th>Adresi</th>
                  <th>Yetkili</th>
                  <th width="90">Telefon</th> 
                  <th>Mail</th>
                  <th>Durum</th>
                  <th width="110">İşlemler</th>
                </tr>
              </thead>
              <tbody>
               @foreach (storeList() as $key ) 
               	{[ $st = status($key->status)]}
                <tr>
                	<td>{{tcevir($key->created_date)}}</td>
                	<td>{{$key->storeName}}</td>
                  <td>{{$key->companyName}}</td>
                  <td>{{$key->companyAddress}}</td>
                  <td>{{$key->authorized}}</td>
                  <td>{{$key->authorized_tel}}</td>
                  <td>{{$key->loginMail}}</td>
                  <td class="{{$st['clss']}}">{{$st['txt']}}</td>
                  <td class="islemler" style="text-align: center;">
                     <a href="/panel/store/send/{{$key->id}}"><i class="icon-envelope"></i></a>
                    <a href="/panel/store/detail/{{$key->id}}"><i class="icon-eye-open"></i></a>
                    <a href="/panel/store/edit/{{$key->id}}"><i class="icon-pencil"></i></a>
                    <a href="/panel/store/delete/{{$key->id}}" onclick="return confirm('Mağazayı silmek üzereseniz. Silmek istediğinizden eminmisiniz?')"><i class="icon-remove"></i></a>
                  </td>
                </tr>
           @endforeach
              

              </tbody>

            </table>
        	</div>
        </div>