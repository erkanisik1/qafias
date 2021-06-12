
<h4>Markalar dükkanlar ( Store ) tarafından eklenir...</h4>
		<div class="widget-box">
	        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
	         

	        </div>
        	<div class="widget-content nopadding">
        	<table class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>Marka</th>
                  <th>Dükkan</th>
                  
                </tr>
              </thead>
              <tbody>
               @foreach (brands() as $key )
                <tr>
                  <td>{[ echo $key->brand ]}</td>
                  <td>{[ echo store($key->store_id)->shop_name]}</td>
                 
                </tr>
               @endforeach
              

              </tbody>

            </table>
        	</div>
        </div>