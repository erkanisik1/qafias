
<!DOCTYPE html>
<html lang="en">
    
<head>
        <title>{[ echo settings('site_name') ]}</title><meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
       
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="css/matrix-login.css" />
        <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>

    </head>
    <body>
        <div id="loginbox">            
            <form id="loginform" class="form-vertical"  method="post">
                 <div class="control-group normal_text"> <h3><t style="color:orange;">{[ echo settings('site_name') ]}</t> E-ticaret-{{USERID}}</h3> </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_lg"><i class="icon-user"></i></span><input type="text" name="mail" />
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_ly"><i class="icon-lock"></i></span><input type="password" name="pass" placeholder="Şifre" />
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                    <span class="pull-left"><a href="#" class="flip-link btn btn-info" id="to-recover">Şifremi Unuttum?</a></span>
                    <span class="pull-right"><button type="submit" class="btn btn-success">Giriş</button ></span>
                </div>
            </form>
            <form id="recoverform" action="#" class="form-vertical">
                <p class="normal_text">Yeni şifre almak için E-Posta adresinizi girin, E-posta adresinize yeni şifre linki gönderilecektir.</p>
                
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_lo"><i class="icon-envelope"></i></span><input type="text" placeholder="E-Posta Adresiniz" />
                        </div>
                    </div>
               
                <div class="form-actions">
                    <span class="pull-left"><a href="#" class="flip-link btn btn-success" id="to-login">&laquo; Giriş ekranına geri dön </a></span>
                    <span class="pull-right"><a class="btn btn-info"/>Gönder</a></span>
                </div>
            </form>
        </div>
        
        <script src="js/jquery.min.js"></script>  
        <script src="js/matrix.login.js"></script> 
    </body>

</html>
