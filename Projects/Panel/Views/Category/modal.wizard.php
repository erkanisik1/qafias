<!-- yeni kategori modal -->
<div class="modal fade modal-below-dropdown" id="new_category">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="new_category">Yeni Kategori Ekleme formu</h5>        
      </div>
      <div class="modal-body">
        <form action="" method="post" class="form-vertical">
            <div class="control-group">
                <label class="control-label">Üst Kategori :</label>
                <div class="controls">
                  <div class="ui-widget">
                  <select name="parentid" class="span12 dropdown-on-top " id="combobox" style="position:absolute; z-index:200000000;">
                      <option value="0">ANA KATEGORİ</option>
                       {{KategoriListesi()}}
                  </select>
                </div>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Kategori Adı:</label>
                <div class="controls">
                <input type="text" class="span12" name="category_name" placeholder="Yeni Kategori adını yazın">
            </div>
        </div>
            <div class="control-group">
                <label class="control-label">Kategori Resmi:</label>
                <div class="controls">
                  <div class="preview"></div>
                <input type="file" class="span12" name="img" id="resim" onChange="verioku()">
            </div>
        </div>
          
    </div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">KAPAT</button>
        <button type="button" class="btn btn-primary">KAYDET</button>
      </div>
      </form>
    </div>
  </div>
</div>
<!-- yeni kategori modal -->