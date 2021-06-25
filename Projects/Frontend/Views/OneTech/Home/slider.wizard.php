<style>
.banner_background, .banner{

    height: 437px !important;

}
.banner{
	box-shadow: 0px 5px 20px rgb(0 0 0 / 10%);

}

.carousel-inner{
	top: -55px;
}

.carousel-item img{
	height: 460px !important;
	right: -105px;
}
</style>
	<div class="banner">
		<div class="banner_background" style="background-image:url('/images/banner_background.jpg')"></div>
		<div class="container  ">
			
<div class="col-sm-9 " style="float: right;">
	

<div class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    
@foreach(sliderResult() as $key)

  
    <div class="carousel-item">
<a href="{{$key->link}}">
      <img class="d-block w-100 " src="/{{$key->imgUrl}}" alt="First slide">
</a>
    </div>
    @endforeach

  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

</div>



		</div>

	</div> 