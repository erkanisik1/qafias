$(function(){
   var tarih=new Date();
    var yil=tarih.getFullYear();
    var ay=tarih.getMonth();
    var gun=tarih.getDay();
    var saat=tarih.getHours();
    var dakika=tarih.getMinutes();
    var saniye=tarih.getSeconds();  

	$(".charonly").keyup(function (){
		if (this.value.match(/[^a-zA-ZöÖçÇşŞğĞüÜıIiİ ]/g)){
			    this.value = this.value.replace(/[^a-zA-ZöÖçÇşŞğĞüÜıIiİ ]/g,'');
		}
	});
    $('#phone').mask("0(599) 999 99 99");

    $("#register_form").validate({
        rules: {
            name:{
                required: true,
                minlength: 3
            },
            surname:"required",
            email:"required",
            password: {
                required: true,
                minlength: 6
            },
            repassword: {
                required: true,
                minlength: 6,
                equalTo: "#password"
            },
            phone:"required",


       
    },
    messages:{
        name:'Bu alan boş yada 3 harften az olamaz',
        surname:'Bu alan boş olamaz',
        email:'Bu alan boş olamaz',
        password: {
            required: "Lütfen bir şifre girin",
            minlength: "Şifreniz en az 6 karakter uzunluğunda olmalı"
        },
    repassword: {
        required: "Lütfen bir şifre girin",
        minlength: "Şifreniz en az 6 karakter uzunluğunda olmalı",
        equalTo: "Şifreleriniz uyuşmuyor, lütfen yukarıdaki ile aynı şifreyi giriniz"
    },
    phone:"Lütfen cep telefonuzu yazın..."    

    }

    });

    $('#basket').click(function(){

        var quantity = $('#quantity_input').val();
        var basketdata = $('#basket').data('id');
        var date = yil+ay+gun+saat+dakika+saniye;
        $.ajax({
            type: "POST",
            url: "../../ajax/basketadd",
            data: "veri="+basketdata+'/'+quantity+'/'+date,
            success: function(data){
                $.alert({
                    title: 'Prestige Mağaza',
                    content: 'Ürün sepetinize eklendi...',
                });
            }
        });
    });
});

$.validator.setDefaults({
    submitHandler: function() {
        $.ajax({
            type: "POST",
            url: "../../ajax/user_register",
            data: $('#register_form').serialize(),
            success: function(data) {
                if (data = 1) {
                $.alert({
                    title: 'Üyelik Başvurusu',
                    content: 'Üyeliğinizi aktif edebilmek için email adresinize bir email gönderdik lütfen emalinizi kontrol ediniz...  ',
                });
                setTimeout(function(){   
                    window.location.assign("http://prestigemagaza.com");
                    //3 saniye sonra yönlenecek
                }, 3000);
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
