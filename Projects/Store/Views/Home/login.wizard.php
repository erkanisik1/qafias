
        <div id="loginbox">            
        <div class="control-group normal_text"> <h3><g style="color:#ff5d00">{[ echo settings('site_name') ]}</g><br> Store Management</h3></div>
{{DB::error()}}
            <form id="loginform" class="form-vertical"  method="post">
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_lg"><i class="icon-user"></i></span><input type="text" name="loginMail" value="" placeholder="Mail adresinizi yazın" />
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_ly"><i class="icon-lock"></i></span><input type="password" name="loginPassword" value="" placeholder="Şifrenizi yazın..." />
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
        
      
       
