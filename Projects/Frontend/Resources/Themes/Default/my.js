$(function(){
 
function addZero(i) {
    if (i < 10) {
        i = "0" + i;
    }
    return i;
}

 $( ".carousel-item:first-child" ).addClass( "active" );

function getActualDate() {
    var d = new Date();
    var day = addZero(d.getDate());
    var month = addZero(d.getMonth()+1);
    var year = d.getFullYear();
    return year+ "-"+month+"-"+day;
}

function formatCurrency(total) {
    var neg = false;
    if(total < 0) {
        neg = true;
        total = Math.abs(total);
    }
    return (neg ? "-$" : "" ) + parseFloat(total, 10).toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g, "$1,").toString();
}

 if(localStorage.getItem('eucookie') != '123'){
    jQuery("#privacy-pop-up").delay(1).fadeIn(1000);
    
  } 
  
  jQuery('#exit-popup').click(function(e) { 
    jQuery('#privacy-pop-up').fadeOut(1000);
    localStorage.setItem('eucookie','123');
  });
  

   $('#basket12').click(function(){

        var quantity = $('#quantity_input').val();
        var productId = $('#basket').data('id');
        var random = Math.random().toString(36).substr(2, 15);
        var date = getActualDate();

        if (localStorage.getItem("basketSecret") == null) {
            localStorage.setItem("basketSecret", random);
        }
  //"veri="+quantity+'/'+productId+'/'+date
        $.ajax({
            type: "POST",
            url: "/Product/basketadd",
            data: $('#productForm').serialize()+'&basketSecret='+localStorage.getItem("basketSecret")+'&adet='+quantity+'&urunId='+productId,
            success: function(data){ 
                var parcala = data.split('/');
               

               $('#count').text(parcala['0']);
               $('.cart_price').text( formatCurrency(parcala['1'])+' TL');
               alert(data);
            },
            error: function(xhr, status, error) {
              alert(xhr.responseText);
            }
        });
    });


    $(window).scroll(function(){
        var scrolltop=$(this).scrollTop();
        if(scrolltop>=50)
        {
            $(".imgup").show(500);
        }
        else { $(".imgup").hide(500);
        }
        });
        $(".imgup").click(function()
        {
            $("html,body").animate({scrollTop: 0}, 500);
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
