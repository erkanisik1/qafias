<?php IMPORT::view('header'); ?>

		<div class="widget-box">
	        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
	          <h5>Müşteriler</h5>

	          <div class="pull-right" style="margin:5px;"><a href="/panel/musteri/yeni "><button>YENİ MÜŞTERİ </button> </a></div>
	        </div>
        	<div class="widget-content nopadding">
        	<table class="table table-bordered table-striped">
              <thead>
                <tr>
                <th width="100">Kayıt Tarihi</th>
                  <th>Adı Soyadı</th>
                  <th>Telefon</th>
                  <th>E-Posta</th>
                  <th width="150">İşlemler</th> 
                  
                </tr>
              </thead>
              <tbody>
               <?php foreach ($liste as $key ) { ?>
                <tr>
                <td><?php echo tcevir($key->createDate) ?></td>
                  <td><?php echo $key->isim ?></td>
                  <td><?php echo $key->telefon ?></td>
                  <td><?php echo $key->mail ?></td>
                  <td style="text-align: center;">
                    <a href="/panel/musteri/duzenle/<?php echo $key->musteri_id; ?>"><button class="btn btn-primary">DÜZENLE</button></a>
                    <a href="/panel/musteri/sil/<?php echo $key->musteri_id; ?>"><button class="btn btn-danger">SİL</button></a>
                  </td>
                </tr>
               <?php } ?>
              

              </tbody>

            </table>
        	</div>
        </div>



<?php Import::view('footer'); ?>