<?php Import::view('header');?>
<?php 

output($firma);
 ?>
<form action="" method="post" class="form-horizontal" id="firmak5ayit" enctype="multipart/form-data">
    <div class="widget-box">

      <!-- Mağaza ayarları -->
      <fieldset>
        <legend>
          <div class="formbaslik">Mağaza ayarları</div>
        </legend>
        <div class="control-group">
          <label class="control-label">Mağaza adı :</label>
          <div class="controls">
            <input type="text" class="span11" name="magaza_adi"  value="<?php echo $firma->shop_name; ?> " >
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Mağaza meta keyword :</label>
          <div class="controls">
            <input type="text" class="span11" name="keyword" value="<?php echo $firma->keyword; ?> ">
          </div>
        </div>
        
        <div class="control-group">
          <label class="control-label">Mağaza açıklaması :</label>
          <div class="controls">
            <textarea class="span11" name="magaza_aciklamasi"><?php echo $firma->magaza_aciklama; ?></textarea>
          </div>
        </div> 
        
        <div class="control-group">
          <label class="control-label">Logo</label>
          <div class="controls">
          <img src="<?php echo $firma->logo; ?> " alt="">
          <div class="preview"></div><br>
            <input type="file" name="logo" id="logo" class="span11 logo1">
          </div>
        </div>
      </fieldset> 
      <!-- /Mağaza ayarları -->
       <!-- Firma Bilgileri -->     
      <fieldset>
        <legend>
          <div class="formbaslik">Firma Bilgileri</div>
        </legend>

        <div class="control-group">
          <label class="control-label">Firma Türü :</label>
          <div class="controls">
            <input type="text" class="span11" name="sirket_turu" value="<?php echo $firma->sirket_turu; ?>" >
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Firma adı :</label>
          <div class="controls">
            <input type="text" class="span11" name="firma_adi" value="<?php echo $firma->firma_adi; ?>">
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Firma web adresi :</label>
           <div class="controls">
            <input type="text" class="span11" name="magaza_web_adresi" value="<?php echo $firma->magaza_web_adresi; ?>">                  
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Firma adresi :</label>
          <div class="controls">
            <textarea class="span11" name="adresi"><?php echo $firma->adresi; ?></textarea>
          </div>
         </div>

        <div class="control-group">
          <label class="control-label">Firma sabit telefon :</label>
           <div class="controls">
            <input type="text" id="mask-phone" name="magaza_sabit_telefon" value="<?php echo $firma->telefon ?>" class="span11 mask text">
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Firma Eposta :</label>
          <div class="controls">
            <input type="email"  name="mail" value="<?php echo $firma->mail ?>" class="span11">
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Kep Adresi :</label>
          <div class="controls">
            <input type="text"  name="kep_adresi" value="<?php echo $firma->kep_adresi ?>" class="span11">
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Mersis No :</label>
          <div class="controls">
            <input type="text" class="span11" name="mersis_no" value="<?php echo $firma->mersis_no ?>">
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Ticaret Odası :</label>
          <div class="controls">
            <?php echo Yfunc::ticaret_odalari($firma->ticaret_odasi); ?>
           
          </div>
        </div>

      </fieldset>
      <!-- /Firma Bilgileri -->
      <!-- Firma mali bilgileri -->      
      <fieldset>
        <legend>
          <div class="formbaslik">Firma mali bilgileri</div>
        </legend>

        <div class="control-group">
          <label class="control-label">*Vergi Dairesi :</label>
          <div class="controls">
            <input type="text" class="span11" name="vergi_dairesi" value="<?php echo $firma->vergi_dairesi ?>" >
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">*Vergi Numarası:</label>
          <div class="controls">
            <input type="text" class="span11" name="vergi_no" value="<?php echo $firma->vergi_no ?>" >
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">*Çalıştığı Banka:</label>
          <div class="controls">
           <?php echo Yfunc::banka($firma->banka_adi); ?>
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">*Iban NO:</label>
          <div class="controls">
            <input type="text" class="span11" name="iban_no" value="<?php echo $firma->iban_no ?>" >
          </div>
        </div>
      </fieldset>
      <!-- /Firma mali bilgileri -->
      <!-- Firma yetkili bilgileri -->             
      <fieldset>
        <legend>
          <div class="formbaslik">Firma yetkili bilgileri</div>
        </legend>

        <div class="control-group">
          <label class="control-label">*Yetkili adı soyadı :</label>
          <div class="controls">
            <input type="text" class="span11" name="yetkili" value="<?php echo $firma->yetkili ?>">
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">*Yetkili Ünvanı :</label>
          <div class="controls">
            <input type="text" class="span11" name="yetkili_unvan" value="<?php echo $firma->yetkili_unvan ?>" >
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">*Yetkilinin gsm telefonu :</label>
          <div class="controls">
            <input type="text" id="mask-phone2" name="yetkili_tel" value="<?php echo $firma->yetkili_tel ?>" class="span11 mask text">
          </div>
        </div>

         <div class="control-group">
        <label class="control-label">Firma Durumu :</label>
        <div class="controls">
          <select name="durum" id="">
            <option value="1" <?php if($firma->durum == '1'){echo 'selected';} ?>>Aktif</option>
            <option value="0" <?php if($firma->durum == '0'){echo 'selected';} ?>>Pasif</option>
          </select>
        </div>
      </div>

      </fieldset>
      <!-- /Firma yetkili bilgileri -->   
      <input type="hidden" name="id" value="<?php echo $firma->magaza_id ?>">           
      <button id="Save7Account" type="submit" class="btn btn-success btn-block" style="margin-top: 10px;">Mağazayı Kaydet</button>
    </div>
  </form>
</div>
<?php Import::view('footer') ?>