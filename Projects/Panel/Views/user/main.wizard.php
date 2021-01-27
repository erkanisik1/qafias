		<div class="widget-box">
	        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
	          <h5>YÖNETİCİLER</h5>

	          <div class="pull-right" style="margin:5px;"><a href="/panel/user/new "><button>YENİ YÖNETİCİ</button> </a></div>
	        </div>
        	<div class="widget-content nopadding">
        	<table class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>RESİM</th>
                  <th>ADI SOYADI</th>
                  <th>EMAİL ADRESİ</th>
                  <th>TELEFONU</th>
                 
                  <th>DURUM</th>

                  <th width="150">İşlemler</th>
                </tr>
              </thead>
              <tbody>
               @foreach (manager() as $key )
                <tr class="align-middle">
                  <td width="100"><img src="/{[ echo $key->avatar ]}" alt="" width="100"></td>
                  <td >{[ echo $key->name ]}</td>
                  <td>{[ echo $key->mail ]}</td>
                  <td>{[ echo $key->tel ]}</td>
                  <td>{[ echo $key->status = '1'?'AKTİF':'PASİF'; ]}</td>
                  <td  style="text-align: center;">
                    <a href="/panel/user/edit/{[ echo $key->id; ]}"><button class="btn btn-primary">DÜZENLE</button></a>
                    <a href="/panel/user/delete/{[ echo $key->id; ]}"><button class="btn btn-danger">SİL</button></a><br><br>
                    <a href="/panel/user/password/{[ echo $key->id; ]}"><button class="btn btn-danger">ŞİFREYİ DEĞİŞTİR</button></a>
                  </td>
                </tr>
               @endforeach
              

              </tbody>

            </table>
        	</div>
        </div>
