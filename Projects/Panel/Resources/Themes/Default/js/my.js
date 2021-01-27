$(function(){
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

	$('.urunresim').change(function(){
		var input = $(event.currentTarget);
	   	var file = input[0].files[0];
	   	var reader = new FileReader();
	   	reader.onload = function(e){
       	image_base64 = e.target.result;
       	preview.html("<img src='"+image_base64+"'/>");
   	};
   reader.readAsDataURL(file);
	});

     $('.edit').click(function(){
        var id = $(this).data("id");
        var exp = id.split('#');
        $("#id").val(exp[0]);
        $("#title").val(exp[1]);
        $("#value").val(exp[2]);
    });


     $('.del').click(function(){
        var delete_id = $(this).data("id");
        $.confirm({
          title: 'Onaylı Silme İşlemi!',
          content: 'Bu kaydı silmek istediğinize eminmisiniz?',
          theme: 'dark',
          animation: 'news',
          closeAnimation: 'news',
          buttons: {
              sİl: function () {
                  $.post("ajax/setting_delete",{id:delete_id},function(data){
                  $("#"+data).fadeOut();
                  });
              },
              vazgeç: function () {
                  
              }
          }
      });
        /*
       
        */
    });


});

function verioku(){      
      $('.preview').show();
      $('.preview').html('');
      var adet=document.getElementById ("resim").files.length;
      for(i=0;i<adet;i++){
         var resim = document.getElementById('resim').files[i];
         var verioku=new FileReader();
         verioku.onload=function(e) {
            var resimverioku= e.target.result;
            $('.preview').append('<img src="'+resimverioku+'" width="140" height="140"/>');
         };
         verioku.readAsDataURL(resim);
      }



     
   };