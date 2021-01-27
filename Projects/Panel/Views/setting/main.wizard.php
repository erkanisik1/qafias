
@view('setting/modal')


		<div class="widget-box">
	        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
	          <h5>SİTE AYARLARI VE DEĞİŞKENLERİ</h5>

	          <div class="pull-right" style="margin:5px;"><button  data-toggle="modal" data-target="#new">YENİ AYAR</button></div>
	        </div>
        	<div class="widget-content nopadding">
        	<table class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>TİTLE</th>
                  <th>VALUE</th>
                  <th width="150">İşlemler</th>
                </tr>
              </thead>
              <tbody>
               @foreach (settings() as $key )
                <tr class="align-middle" id="{[ echo $key->id; ]}">
                  <td >{[ echo $key->title ]}</td>
                  <td >{[ echo $key->value ]}</td>
                 
                  <td  style="text-align: center;">
                    <button class="btn btn-primary edit" data-toggle="modal" data-target="#edit"  data-id="{[ echo $key->id.'#'.$key->title.'#'.$key->value; ]}" >DÜZENLE</button>
                    <button class="btn btn-danger del" data-id="{[ echo $key->id; ]}">SİL</button>
                   
                  </td>
                </tr>
               @endforeach
               

              </tbody>

            </table>
        	</div> 
        </div>
  