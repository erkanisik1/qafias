
<?php Import::view(TEMA.'header'); ?>

 <link rel="stylesheet" type="text/css" href="/<?php echo THEMES_DIR;?>OneTech/styles/contact_styles.css">
 <link rel="stylesheet" type="text/css" href="/<?php echo THEMES_DIR;?>OneTech/styles/contact_responsive.css">

<br>	
		
				<div class="container map_container">
					<img src="/upload/turkeymaps.jpg" alt="" width="1150">
				</div>
		
		<div class="contact_form">
			<div class="container">
				<div class="row">
					<div class="col-lg-10 offset-lg-1">
						<div class="contact_form_container">
							<div class="contact_form_title">İletişim</div>

							<form action="#" id="contact_form">
								<div class="contact_form_inputs d-flex flex-md-row flex-column justify-content-between align-items-between">
									
									<input type="text" id="contact_form_name" class="contact_form_name input_field" placeholder="Adınız Soyadınız" required="required" data-error="Name is required.">
									<input type="text" id="contact_form_email" class="contact_form_email input_field" placeholder="Email Adresiniz" required="required" data-error="Email is required.">
									<input type="text" id="contact_form_phone" class="contact_form_phone input_field" placeholder="Your phone number">
								</div>
								<div class="contact_form_text">
									<textarea id="contact_form_message" class="text_field contact_form_message" name="message" rows="4" placeholder="Mesajınızı Yazın" required="required" data-error="Lütfen mesajınızı yazın."></textarea>
								</div>
								<div class="contact_form_button">
									<button type="submit" class="button contact_submit_button">Gönder</button>
								</div>
							</form>

						</div>
					</div>
				</div>
			</div>
			<div class="panel"></div>
		</div>

		




<?php import::view(TEMA.'footer'); ?>