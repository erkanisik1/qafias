@if(STOREID)
    @view('Assets/header')
    @view
    @view('Assets/footer')
@else
    @view('Home/login')
@endif