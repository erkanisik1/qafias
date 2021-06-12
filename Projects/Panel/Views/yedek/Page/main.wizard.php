		<a href="/panel/page/new"><button class="btn btn-primary">Yeni Sayfa</button></a>
    <div class="widget-box">
	        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
	          <h5>Sayfalar</h5>

	          <div class="pull-right" style="margin:5px;"><a href="/panel/page/new "><button>YENİ SAYFA</button> </a></div>
	        </div>
        	<div class="widget-content nopadding">
        	<table class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>Sayfa</th>
                  <th width="150">İşlemler</th>
                </tr>
              </thead>
              <tbody>
               @foreach (pageList() as $key )
                <tr>
                  <td>{{$key->title}}</td>
                  <td class="islemler" style="text-align: center;">
                    <a href="/panel/page/edit/{{$key->id}}"><button class="btn btn-primary">DÜZENLE</button></a>
                    <a href="/panel/page/delete/{{$key->id}}"><button class="btn btn-danger">SİL</button></a>
                  </td>
                </tr>
               @endforeach           

              </tbody>
            </table>
        	</div>
        </div>
  
