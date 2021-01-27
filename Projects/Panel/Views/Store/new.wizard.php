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
            <input type="text" class="span11" name="magaza_adi" placeholder="Mağaza adı">
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Mağaza meta keyword :</label>
          <div class="controls">
            <input type="text" class="span11" name="keyword" placeholder="Aramalarda çıkması için kelimeleri virgülle ayırarak yazın">
          </div>
        </div>
        
        <div class="control-group">
          <label class="control-label">Mağaza açıklaması :</label>
          <div class="controls">
            <textarea class="span11" name="magaza_aciklamasi"></textarea>
          </div>
        </div> 
        
        <div class="control-group">
          <label class="control-label">Mağaza yönetim Şifresi :</label>
          <div class="controls">
            <input type="text"  name="sifre" class="span11">
          </div>
        </div>
      
        <div class="control-group">
          <label class="control-label">Logo</label>
          <div class="controls">
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
            <input type="text" class="span11" name="sirket_turu" placeholder="Firma Türü">
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Firma adı :</label>
          <div class="controls">
            <input type="text" class="span11" name="firma_adi" placeholder="Firma adı">
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Firma web adresi :</label>
           <div class="controls">
            <input type="text" class="span11" name="magaza_web_adresi" placeholder="Firma web adresi">                  
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Firma adresi :</label>
          <div class="controls">
            <textarea class="span11" name="adresi"></textarea>
          </div>
         </div>

        <div class="control-group">
          <label class="control-label">Firma sabit telefon :</label>
           <div class="controls">
            <input type="text" id="mask-phone" name="magaza_sabit_telefon" placeholder="Firmaya ait sabit telefon numarası" class="span11 mask text">
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Firma Eposta :</label>
          <div class="controls">
            <input type="email"  name="mail" placeholder="Firmanın resmi eposta adresi" class="span11">
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Kep Adresi :</label>
          <div class="controls">
            <input type="text"  name="kep_adresi" placeholder="Firmanın resmi kep eposta adresi" class="span11">
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Mersis No :</label>
          <div class="controls">
            <input type="text" class="span11" name="mersis_no" placeholder="Şirketin mersis numarası">
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Ticaret Odası :</label>
          <div class="controls">
            <select name="ticaret_odasi" class="span11">
              <option value="">Seçiniz...</option> 
              <option value="">ACIPAYAM TICARET ODASI</option>
              <option value="">ADANA TICARET ODASI</option>
              <option value="">ALIAGA TICARET ODASI</option>
              <option value="">ANKARA TICARET ODASI</option>
              <option value="">AYDIN TICARET ODASI</option>
              <option value="">AYVALIK TICARET ODASI</option>
              <option value="">BABADAG TICARET ODASI</option>
              <option value="">BALIKESIR TICARET ODASI</option>
              <option value="">BANDIRMA TICARET ODASI</option>
              <option value="">BAYINDIR TICARET ODASI</option>
              <option value="">BERGAMA TICARET ODASI </option>
              <option value="">BEYPAZARI TİCARET ODASI</option>
              <option value="">BEYSEHIR TICARET ODASI</option>
              <option value="">BODRUM TICARET ODASI</option>
              <option value="">BULDAN TICARET ODASI</option>
              <option value="">BUNYAN TICARET ODASI</option>
              <option value="">BURHANIYE TICARET ODASI</option>
              <option value="">CEYHAN TICARET ODASI</option>
              <option value="">CUMRA TICARET ODASI</option>
              <option value="">DENIZLI TICARET ODASI</option>
              <option value="">DEVELI TICARET ODASI</option>
              <option value="">DOGANHISAR TICARET ODASI</option>
              <option value="">DİDİM TİCARET ODASI</option>
              <option value="">EDREMIT TICARET ODASI</option>
              <option value="">ERDEK TICARET ODASI</option>
              <option value="">ESKISEHIR TICARET ODASI</option>
              <option value="">GAZIANTEP TICARET ODASI</option>
              <option value="">GEBZE TICARET ODASI</option>
              <option value="">GONEN TICARET ODASI</option>
              <option value="">HAYMANA TICARET ODASI</option>
              <option value="">ILGIN TICARET ODASI</option>
              <option value="">ISLAHIYE TICARET ODASI</option>
              <option value="">ISTANBUL TICARET ODASI</option>
              <option value="">IZMIR TICARET ODASI</option>
              <option value="">KADIRLI TICARET ODASI</option>
              <option value="">KAYSERI TICARET ODASI</option>
              <option value="">KOCAELİ TİCARET ODASI</option>
              <option value="">KONYA TICARET ODASI</option>
              <option value="">KOZAN TICARET ODASI</option>
              <option value="">KUSADASI TICARET ODASI</option>
              <option value="">KÖRFEZ TİCARET ODASI</option>
              <option value="">MARMARİS TİCARET ODASI</option>
              <option value="">MENEMEN TICARET ODASI</option>
              <option value="">NAZILLI TICARET ODASI</option>
              <option value="">NIZIP TICARET ODASI</option>
              <option value="">ODEMIS TICARET ODASI</option>
              <option value="">POLATLI TICARET ODASI</option>
              <option value="">SARAYKOY TICARET ODASI</option>
              <option value="">SELCUK TICARET ODASI</option>
              <option value="">SEREFLIKOCHISAR TICARET ODASI</option>
              <option value="">SEYDISEHIR TICARET ODASI</option>
              <option value="">SOKE TICARET ODASI</option>
              <option value="">SUSURLUK TİCARET ODASI</option>
              <option value="">TAVAS TICARET ODASI</option>
              <option value="">TIRE TICARET ODASI</option>
              <option value="">TORBALI TICARET ODASI</option>
              <option value="">YAHYALI TICARET ODASI</option>
            </select>
           
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
            <input type="text" class="span11" name="vergi_dairesi" placeholder="Vergi Dairesi Adı">
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">*Vergi Numarası:</label>
          <div class="controls">
            <input type="text" class="span11" name="vergi_no" placeholder="Vergi Dairesi Numarası">
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">*Çalıştığı Banka:</label>
          <div class="controls">
            <input type="text" class="span11" name="banka_adi" placeholder="Çalıştığı Banka Adı">
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">*Iban NO:</label>
          <div class="controls">
            <input type="text" class="span11" name="iban_no" placeholder="Banka Iban Numarası">
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
            <input type="text" class="span11" name="yetkili" placeholder="Mağaza yetkilisinin adı soyadı">
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">*Yetkili Ünvanı :</label>
          <div class="controls">
            <input type="text" class="span11" name="yetkili_unvan" placeholder="Yetkilinin firmadaki ünvanı">
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">*Yetkilinin gsm telefonu :</label>
          <div class="controls">
            <input type="text" id="mask-phone2" name="yetkili_tel" placeholder="Mağaza Yetkilisinin cep telefon numarası" class="span11 mask text">
          </div>
        </div>
      </fieldset>
      <!-- /Firma yetkili bilgileri -->              
      <button id="SaveAccount" type="submit" class="btn btn-success btn-block" style="margin-top: 10px;">Mağazayı Kaydet</button>
    </div>
  </form>
</div>