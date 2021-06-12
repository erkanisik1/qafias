<?php import::view('header'); output(Email::error());?>

      <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>Eposta Gönder</h5>
        </div>
        <div class="widget-content nopadding">
          <form action="#" method="post" class="form-horizontal">
            <div class="control-group">
              <label class="control-label">Bilgiler :</label>
              <div class="controls">
               Mağaza Adı: <?php echo $detay->magaza_adi; ?> | Yetkili Adı: <?php echo $detay->yetkili; ?> | Mail Adresi: <?php echo $detay->mail; ?> | Telefon:  <?php echo $detay->yetkili_tel; ?> 
              </div>
            </div>
       
            <div class="control-group">
              <label class="control-label">Konu :</label>
              <div class="controls">
                <input type="text" class="span11" name="konu">
              </div>
            </div>
           
            <div class="control-group">
              <label class="control-label">Mesaj</label>
              <div class="controls">
                <textarea class="span11 editor" name="mesaj" id="editor" rows="10"></textarea>
              </div>
            </div>
            <div class="form-actions">
           <input type="hidden" name="mail" value="<?php echo $detay->mail; ?>">
              <button type="submit" class="btn btn-success btn-block">E-POSTA GÖNDER</button>
            </div>
          </form>
        </div>
      </div>
    
   																											
<?php import::view('footer'); ?>