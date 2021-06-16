
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
          
          <th>BAŞLIK</th>
          
          
          <th width="" colspan="2">SIRALAMA</th>
          <th width="100">İŞLEMLER</th> 
        </tr>
      </thead>
      <tbody>
        @foreach ($slider as $key)
          <tr class="gradeX">
            
            <td>{{$key->title}}</td>
           
            <td style="text-align: center">{{$key->rank}}</td>
            <td width="30" style="text-align: center;">  
              @if ($key->rank > 1)
                <a href="/panel/slayt/up/{{$key->id}}"><i class="fa fa-chevron-up"></i></a>
              @endif
              @if ($sira_max > $key->rank)                
                <a href="/panel/slayt/down/{{$key->id}}"><i class="fa fa-chevron-down"></i></a>
              @endif                 
            </td>
            <td style="text-align: center;" >
              <a href="/panel/slayt/edit/{{$key->id}} "><button><i class="fa fa-edit fa-lg"></i></button></a>
              <a href="/panel/slayt/delete/{{$key->id}}" onclick="return confirm('Bu kaydı silmek istediğinize eminmisiniz?')"><button><i class="fa fa-trash fa-lg"></i></button></a>
            </td>
          </tr>
      @endforeach
      </tbody>
    </table>
  </div>
</div>
