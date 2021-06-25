
<a href="/panel/slayt/new"><button class="btn btn-primary">New Slayt</button></a>
<h1>Slayt Management</h1>
</div>
<div class="widget-box">
  <div class="widget-title"> <span class="icon"><i class="fa fa-th"></i></span>
    <h5>Slayt Listesi</h5>    
  </div>
  <div class="widget-content nopadding">
  
    <table class="table table-bordered table-striped">
      <thead>
        <tr>
          <th width="110">Resim</th>
         
          <th>BAŞLIK</th>
          
          <th >SIRALAMA</th>
         
          <th width="10">DURUMU</th>
         
          <th width="100">İŞLEMLER</th> 
       
        </tr>
      </thead>
      <tbody>
        @foreach ($slider as $key)
          <tr>
            <td><img src="/{{$key->imgUrl}}" alt="" width="150"></td>
            
            <td>{{$key->title}}</td>
           
            <td width="30" style="text-align: center;">  
              @if ($key->rank > 1)
                <a href="/panel/slayt/up/{{$key->id}}"><i class="fa fa-chevron-up"></i></a>
              @endif
              @if ($sira_max > $key->rank)                
                <a href="/panel/slayt/down/{{$key->id}}"><i class="fa fa-chevron-down"></i></a>
              @endif                 
            </td>
            
            <td>{{$key->status}}</td>
            
            <td style="text-align: center;" >
              <a href="/panel/slayt/edit/{{$key->id}} "><button class="btn btn-primary">Edit</button></a>
              <a href="/panel/slayt/delete/{{$key->id}}" onclick="return confirm('Bu kaydı silmek istediğinize eminmisiniz?')">
                <button class="btn btn-danger">Sil</button>
              </a>
            </td>
          </tr>
      @endforeach
      </tbody>
    </table>
  </div>
</div>
