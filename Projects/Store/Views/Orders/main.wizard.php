{[ import::view('header'); ]}
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
                  <th width="80">İşlemler</th>
                </tr>
              </thead>
              <tbody>

				{[ $a=0; foreach ($siparis as $key ) { $a = $a + 1;]}
                <tr>
                	<td>{[ echo $a; ]} </td>
                	<td>{[ echo $key->urunID ]}</td>
                  <td>{[ echo Myfunc::tcevir($key->createDate) ]}</td>
                  <td>{[ echo Mgzy::urun_adi($key->urunID); ]}</td>
                  <td>{[ echo Mgzy::musteri_adi($key->musteriID); ]}</td>
                
                  <td class="islemler" style="text-align: center;">
                    <a href="{[ echo baseUrl(); ]}magazayonetim/urunler/duzenle/{[ echo $key->urunID; ]}"><i class="icon-pencil"></i></a>
                    <a href="{[ echo baseUrl(); ]}magazayonetim/urunler/sil/{[ echo $key->urunID; ]}" onclick="return confirm('Bu kaydı silmek istediğinize eminmisiniz?');"><i class="icon-remove"></i></a>
                  </td>
                </tr>
               {[ } ]}
              

              </tbody>

            </table>
        	</div>
        </div>

{[ import::view('footer'); ]}