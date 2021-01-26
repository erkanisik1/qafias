<?php import::view(TEMA.'header'); ?>
<div class="single_post">
				<div class="col-lg-4 offset-lg-2 mx-auto">
					<div class="single_post_title" style="color:#0E8CE4;">ÜYE OL</div>
						<div class="single_post_text">
							<form action="" method="post" id="register_form" autocomplete="off" >

								<div class="form-group">
								    <input type="text" class="form-control " id="name" name="name" placeholder="Adı*"  >
								</div>


								<div class="form-group">
								    <input type="text" class="form-control charonly" id="surname" name="surname" value="" placeholder="Soyadı*" >
								</div>

								<div class="form-group">
								    <input type="email" class="form-control" id="email" name="email" placeholder="E-Posta Adresiniz*" required >
								</div>
								<div class="form-group">
								    <input type="password" class="form-control" id="password" name="password" value="" placeholder="Şifre* " >
								</div>

								<div class="form-group">
								    <input type="password" class="form-control" id="repassword" name="repassword" value="" placeholder="Şifre ( Tekrar )* " >
								</div>

								<div class="form-group">
								    <input type="tel" class="form-control phone" id="phone" name="phone" value="" placeholder="Cep Telefonu* " required >
								</div>

								<div class="form-group">
									<select name="gender" id="gender" class="form-control" required style="margin-left: 0px;">
										<option value="">Seçiniz...</option>
										<option value="Erkek">Erkek</option>
										<option value="Kadın">Kadın</option>									
									</select>
								</div>



								<div class="row" style="margin-left: 0px;">	
										<div class="form-group">
									<label>Doğum Tarihiniz</label><br>
									<select name="day" class="form-control" required>
										<option value="">GÜN</option>
										<?php for ($x = 1; $x <= 31; $x++) { ?>
											<option value="<?php echo $x; ?>"><?php echo $x; ?></option>
										<?php } ?>
									</select>
								</div>
								&nbsp
									<div class="form-group">
									<label>&nbsp</label>
									<select name="month" class="form-control" required>
										<option value="">AY</option>
										<?php for ($x = 1; $x <= 12; $x++) { ?>
											<option value="<?php echo $x; ?>"><?php echo $x; ?></option>
										<?php } ?>
									</select>
								</div>
								&nbsp
									<div class="form-group">
									<label>&nbsp</label>
									<select name="year" class="form-control" required>
										<option value="">YIL</option>
										<?php 
											$yil = date('Y')-18;

											for ($x = $yil; $x >='1920'; $x--) { ?>
											<option value="<?php echo $x; ?>"><?php echo $x; ?></option>
										<?php } ?>
									</select>
								</div></div>

								<div class="form-group" style="margin-left: 20px;">
									<div class="form-check">
									  <input class="form-check-input" type="checkbox" name="confirmation" value="1" id="confirmation" required>
									  <label class="form-check-label" for="onay">
									    Üyelik Sözleşme şartlarını okudum ve kabul ediyorum.
									  </label>
									</div>
								</div>

							
								<button type="submit" id="submit" class="btn btn-primary btn-block">Üye Ol</button><br>
							</form>
						</div>
				</div>
	


		</div>
	


<?php import::view(TEMA.'footer'); ?>