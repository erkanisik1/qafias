<?php Import::view('header') ?>

<style>
  .control-group{
    border-bottom: 1px solid #ccc !important;
  }
</style>

  <form action="" method="post" class="form-horizontal" id="firmsakayit" enctype="multipart/form-data">
    <div class="widget-box">
      <!-- Mağaza ayarları -->
       <div class="control-group">
          <label class="control-label">Logo :</label>
          <div class="controls">
          <img src="/upload/magazalogo/<?php echo $detay->store_logo; ?> " alt="">
         
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Mağaza adı :</label>
          <div class="controls">
           <?php echo $detay->shop_name; ?>
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Mağaza meta keyword :</label>
          <div class="controls">
            <?php echo $detay->keyword; ?>
          </div>
        </div>
        
        <div class="control-group">
          <label class="control-label">Mağaza açıklaması :</label>
          <div class="controls">
            
            <?php echo $detay->description; ?>
          </div>
        </div> 
        
       
      
       
      <!-- /Mağaza ayarları -->
       <!-- Firma Bilgileri -->     
      
        <div class="control-group">
          <label class="control-label">Firma Türü :</label>
          <div class="controls">
            <?php echo $detay->company_type; ?>

          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Firma adı :</label>
          <div class="controls">
            <?php echo $detay->shop_name; ?>
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Firma web adresi :</label>
           <div class="controls">
             <a href="<?php echo $detay->shop_url; ?>" target="_blank"><?php echo $detay->shop_url; ?> </a>                
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Firma adresi :</label>
          <div class="controls">
          <?php echo $detay->address; ?>
           
          </div>
         </div>

        <div class="control-group">
          <label class="control-label">Firma sabit telefon :</label>
           <div class="controls">
           <?php echo $detay->store_tel; ?>
            
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Firma Eposta :</label>
          <div class="controls">
           <?php echo $detay->mail; ?>
            
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Kep Adresi :</label>
          <div class="controls">
          <?php echo $detay->kep_adresi; ?>
            
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Mersis No :</label>
          <div class="controls">
          <?php echo $detay->mersis_no; ?>
            
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Ticaret Odası :</label>
          <div class="controls">
          <?php echo $detay->chamber_of_commerce; ?>
           
          </div>
        </div>

      <!-- /Firma Bilgileri -->
      <!-- Firma mali bilgileri -->      
        <div class="control-group">
          <label class="control-label">Vergi Dairesi :</label>
          <div class="controls">
          <?php echo $detay->tax_administration; ?>
           
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Vergi Numarası:</label>
          <div class="controls">
          <?php echo $detay->tax_number; ?>
            
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Çalıştığı Banka:</label>
          <div class="controls">
          <?php echo $detay->bank_name  ; ?>
           
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Iban NO:</label>
          <div class="controls">
          <?php echo $detay->iban_no; ?>
           
          </div>
        </div>
      
      <!-- /Firma mali bilgileri -->
      <!-- Firma yetkili bilgileri -->             
      
        <div class="control-group">
          <label class="control-label">Yetkili adı soyadı :</label>
          <div class="controls">
          <?php echo $detay->authorized; ?>
            
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Yetkili Ünvanı :</label>
          <div class="controls">
          <?php echo $detay->authorized_person; ?>
           
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Yetkilinin gsm telefonu :</label>
          <div class="controls">
          <?php echo $detay->authorized_tel; ?>
           
          </div>
        </div>
     
      <!-- /Firma yetkili bilgileri -->              
      
    </div>
  </form>

<?php Import::view('footer') ?>