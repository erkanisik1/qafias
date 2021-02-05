	<div class="top_bar">
			<div class="container">
				<div class="row">
					<div class="col d-flex flex-row">
						<div class="top_bar_contact_item">
							<div class="top_bar_icon"><img src="images/phone.png" alt=""></div>
							{{settings('telephone')}}</div>
							<div class="top_bar_contact_item"><div class="top_bar_icon"><img src="images/mail.png" alt=""></div><a href="mailto:{{settings('mail')}}">{{settings('mail')}}</a></div>
						<div class="top_bar_content ml-auto">
						@if(Session::select('LOGIN') == true)
							<div class="top_bar_user">
								<div class="user_icon"><i class="fas fa-user"></i></div>
								<div><a href="/user">{{Session::select('USER')}}</a></div>
								<div><i class="fas fa-sign-out-alt"></i> <a href="/user/logout">Çıkış</a></div>
								
							</div>
						@else
							<div class="top_bar_user">
								<div class="user_icon"><i class="fas fa-user"></i></div>
								<div><a href="/user/register">Kayıt Ol</a></div>
								<div><i class="fas fa-sign-in-alt"></i> <a href="/user/login">Giriş Yap</a></div>
							</div>
						@endif
						</div>
					</div>
				</div>
			</div>		
		</div>