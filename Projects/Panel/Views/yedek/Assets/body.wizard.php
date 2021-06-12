@if(USERID)
	@view('Sections/header')
	@view 
	@view('Sections/footer')
@else
	@view('Login/main')
@endif
