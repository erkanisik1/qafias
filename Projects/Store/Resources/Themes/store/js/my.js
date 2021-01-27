$(function(){
   $('#secenek').click(function(){
      $('.secenekler').append('<div class="row"><div class="span6"><label>Seçeneğin Adı ( örnek: Beden )</label><br><input type="text" class="span11" name="new_label[]" value=""></div><div class="span6"><label>Seçeneklerin aralarına virgül koyarak yazın ( Örnek: S,M,L )</label><br><input type="text" class="span11" name="new_sec[]" value=""></div></div><hr>');
  });  
 
  $('.delete').click(function(){
    var delete_id = $(this).data("id");

    $.post("../../ajax/option_delete",{id:delete_id},function(data){

      $("#"+data).fadeOut();
      
    });
  });

  $('.delete_img').click(function(){
     var delete_img = $(this).data("id");
     $.post("../../ajax/img_delete",{id:delete_img},function(data){
        $("#"+data).fadeOut();
      
       
    });
    
  });


	var preview = $('.preview');

	$('.logo1').change(function(){
		var input = $(event.currentTarget);
	   	var file = input[0].files[0];
	   	var reader = new FileReader();
	   	reader.onload = function(e){
       	image_base64 = e.target.result;
       	preview.html("<img src='"+image_base64+"'/>");
   	};
   reader.readAsDataURL(file);
	});


  
 

}); //jquery sonu

function verioku(){      
      $('.preview').show();
      $('.preview').html('');
      var adet=document.getElementById ("urunresim").files.length;
      for(i=0;i<adet;i++){
         var resim = document.getElementById('urunresim').files[i];
         var verioku=new FileReader();
         verioku.onload=function(e) {
            var resimverioku= e.target.result;
            $('.preview').append('<img src="'+resimverioku+'" width="140" height="140"/>');
         };
         verioku.readAsDataURL(resim);
      }



     
   };