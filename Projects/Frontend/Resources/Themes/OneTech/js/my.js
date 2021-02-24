$(function(){
    
   $('#basket').click(function(){
        var quantity = $('#quantity_input').val();
        var basketdata = $('#basket').data('id');
        var date = yil+ay+gun+saat+dakika+saniye;
        $.ajax({
            type: "POST",
            url: "ajax/basketadd",
            data: "veri="+basketdata+'/'+quantity+'/'+date,
            success: function(data){
                alert(data);
               
            },
            error: function(xhr, status, error) {
  alert(xhr.responseText);
}

        });
    });

/*
$.validator.setDefaults({
    
    submitHandler: function() {
        $.ajax({
            type: "POST",
            url: "../../ajax/user_register",
            data: $('#register_form').serialize(),
            success: function(data) {
                alert(data);
                if (data = 1) {
                    
                //$.alert({
                    //title: 'Üyelik Başvurusu',
                    //content: 'Üyeliğinizi aktif edebilmek için email adresinize bir email gönderdik lütfen emalinizi kontrol ediniz...  ',
                //});
                
              
            }else{
                alert(data);
            }
            },
            error: function(XMLHttpRequest, textStatus, errorThrown) {
                alert('error handling here '+errorThrown);
            }
        });
    }
});
*/

});