
<style>
  .form1{
    padding: 10px;
  }
</style>
<div class="widget-box">
  <div class="widget-title"> 
    <span class="icon"> <i class="icon-align-justify"></i> </span>
    <h5>YÖNETİCİ EKLE</h5>
  </div>
  <div class="widget-content nopadding">
    <form action="" method="post" class="form-vertical"  enctype="multipart/form-data">
<div class="form1">
  
      <div class="control-group">
        <label class="control-label">ADI SOYADI:</label>
        <div class="controls">
          <input type="text" class="span12" name="name" >
        </div>
      </div>

      <div class="control-group">
        <label class="control-label">E-POST ADRESİ:</label>
        <div class="controls">
          <input type="text" class="span12" name="mail" >
        </div>
      </div>

      <div class="control-group">
        <label class="control-label">TELEFON NUMARASI:</label>
        <div class="controls">
          <input type="text" class="span12 mask text" id="mask-telephone" name="tel">
               
        </div>
      </div>

      <div class="control-group">
        <label class="control-label">KULLANICI ADI:</label>
        <div class="controls">
          <input type="text" class="span12" name="username" >
        </div>
      </div>

       <div class="control-group">
        <label class="control-label">ŞİFRESİ:</label>
        <div class="controls">
          <input type="text" class="span12" name="password" >
        </div>
      </div>

        <div class="control-group">
        <label class="control-label">RESMİ:</label>
        <div class="controls">
          <div class="preview" style="width:100px;"></div>
          <input type="file" name="resim" id="resim"  onChange="verioku()">
        </div>
      </div>

       <div class="form-actions">
              <button type="submit" class="btn btn-success btn-block">KAYDET</button>
            </div>



</div>
    </form>
  </div>
</div>
