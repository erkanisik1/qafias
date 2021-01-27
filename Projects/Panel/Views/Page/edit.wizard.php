<div class="container-fluid">
<div class="row-fluid">

<div class="widget-box">
  <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
    <h5>GÜNCELLE: {{pageEdit($id)->title}}</h5>
  </div>
  <div class="widget-content nopadding">
    <form action="" method="post" class="form-horizontal">
            <div class="control-group">
              <label class="control-label">Başlık :</label>
              <div class="controls">
                <input type="text" class="span11" name="title" value="{{pageEdit($id)->title}} " placeholder="BAŞLIK">
              </div>
            </div>

             <div class="control-group">
              <label class="control-label">İçerik :</label>
              <div class="controls">
                <textarea class="span11" id="editor" name="content" rows="30">{{pageEdit($id)->content}} </textarea>
              </div>

          
            <div class="form-actions">
              <input type="hidden" name="id" value="{{pageEdit($id)->id}}">
              <button type="submit" class="btn btn-success btn-block">Güncelle</button>
            </div>
          </form>
        </div>
      </div>
</div>
</div>
