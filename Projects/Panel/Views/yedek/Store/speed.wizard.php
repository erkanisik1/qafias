  <form action="" method="post" class="form-horizontal" id="firmak5ayit" enctype="multipart/form-data">
    <div class="widget-box">
    {{DB::error()}}
      <!-- Mağaza ayarları -->
      <fieldset>
        <legend>
          <div class="formbaslik">Mağaza ayarları</div>
        </legend>

        <div class="control-group">
          <label class="control-label">Mağaza Adı :</label>
          <div class="controls">
            <input type="text"  name="storeName" class="span11">
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">Login Mail Adresi :</label>
          <div class="controls">
            <input type="mail"  name="loginMail" class="span11">
          </div>
        </div>
        
        <div class="control-group">
          <label class="control-label">Login Şifresi :</label>
          <div class="controls">
            <input type="text"  name="loginPassword" class="span11">
          </div>
        </div>
      </fieldset> 
      <!-- /Mağaza ayarları -->
      <button id="SaveAccount" type="submit" class="btn btn-success btn-block" style="margin-top: 10px;">Mağazayı Kaydet</button>
    </div>
  </form>
</div>