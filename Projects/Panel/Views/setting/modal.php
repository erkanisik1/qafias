<!-- Modal NEW-->
<div class="modal fade" id="new">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Site için yeni ayar</h5>
      </div>
        <form action="" method="post" class="form-vertical">
      <div class="modal-body">
            <div class="control-group">
        <label class="control-label">TITLE:</label>
        <div class="controls">
          <input type="text" class="span12" name="new_title" >
        </div>
      </div>
        <div class="control-group">
        <label class="control-label">VALUE:</label>
        <div class="controls">
          <input type="text" class="span12" name="new_value" >
        </div>
      </div>
      </div>
      <div class="modal-footer">
        <input type="hidden" name="option" value="new">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">KAPAT</button>
        <button type="submit" class="btn btn-primary">KAYDET</button>
      </div>
        </form>
    </div>
  </div>
</div>
<!-- /new -->

<!-- Modal UPDATE-->
<div class="modal fade" id="edit">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">DÜZENLE</h5>
      </div>
        <form action="" method="post" class="form-vertical">
      <div class="modal-body">
            <div class="control-group">
        <label class="control-label">TITLE:</label>
        <div class="controls">
           <input type="text"  class="span12" id="title" value="" disabled>
        </div>
      </div>
        <div class="control-group">
        <label class="control-label">VALUE:</label>
        <div class="controls">
          <input type="text" class="span12" id="value" name="update_value"  >
        </div>
      </div>
      </div>
      <div class="modal-footer">
        <input type="hidden" name="option" value="update">
        <input type="hidden" name="id" id="id" value="">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">KAPAT</button>
        <button type="submit" class="btn btn-primary">KAYDET</button>
      </div>
    </form>
    </div>
  </div>
</div>

<!-- /Modal UPDATE-->