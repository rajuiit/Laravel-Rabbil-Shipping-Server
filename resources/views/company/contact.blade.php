@include('layouts.font_header')
<style>
    .contact-header{
        background-color: #ff6700;
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center center;
        text-align: center;
        color: #fff;
        padding:50px 0;
    }
    .mailto,.mailto:hover{
        text-decoration:underline;
        color:#8c8c8c;
    }
    
    
</style>

<!-- main content-->

<div class="contact-header">
    <h2 class='text-center m-0 text-uppercase'>Contact Information</h2>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card border-0 my-5">
                <img src="{{asset('frontend/img/map.jpg')}}" class="card-img-top" alt="Map">
                <div class="card-body text-center pt-5">
                    <p class="card-text mb-2">+8801774558990</p>
                    <p class="card-text mb-2">
                        <a class="mailto" href="mailto:rabbilshippinglines@gmail.com">rabbilshippinglines@gmail.com</a>
                    </p>
                    <p class="card-text mb-2">
                        <a class="mailto" href="mailto:mohammadrabbil@gmail.com">mohammadrabbil@gmail.com</a>
                    </p>
                    <p class="card-text mb-2">
                        <a class="mailto" href="/">Visit site</a>
                    </p>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-6">
                        <div class="card-body text-center">
                            <h5 class="card-title">Corporate office</h5>
                            <p class="card-text small">
                                62-63, Motijheel C/A, <br>
                                Amin Court Bhaban 7th Floor, <br>
                                (Room No-701/B), Dhaka-1000.
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card-body text-center">
                            <h5 class="card-title">ShipYard Unit 1</h5>
                            <p class="card-text small">
                                (Ananda Shipyard and Slipways Ltd) <br>
                                Meghnaghat, sonargaon, <br>
                                Narayanganj
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card-body text-center">
                            <h5 class="card-title">ShipYard Unit 2</h5>
                            <p class="card-text small">
                                (Islampur ShipYard)<br>
                                Meghnaghat, sonargaon, <br>
                                Narayanganj
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card-body text-center">
                            <h5 class="card-title">ShipYard Unit 3</h5>
                            <p class="card-text small">
                                (Lucky Shipyard)<br>
                                Ichakhali, Rupgonj,<br>
                                Narayanganj
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>  
    </div>
</div>

{{-- footer  --}}
<div class="footer">
  <div class="container">
    <div class="row ">
      <div class="col-md-3 contact_inf">
        <h1>CONTACT US</h1>
        <!--<div class="contact"><i class="fa fa-map-marker" aria-hidden="true"></i><a href="">Diu</a></div>-->
        <div class="contact"><i class="fa fa-mobile" aria-hidden="true"></i><a href=""> +8801774558990</a></div>
        <div class="contact">
            <i class="fa fa-envelope-o" aria-hidden="true"></i>
            <a class="small" href="mailto:rabbilshippinglines@gmail.com">rabbilshippinglines@gmail.com</a>
        </div>
        <div class="contact">
            <i class="fa fa-envelope-o" aria-hidden="true"></i>
            <a class="small" href="mailto:mohammadrabbil@gmail.com">mohammadrabbil@gmail.com</a>
        </div>
      </div>
      <div class="col-md-3 contact_inf">
        <h1>CUSTOMER SERVICE</h1>
        <div>
          <ul>
            <li><a href="">My account</a></li>
            <li><a href="">Wishlist</a></li>
            <li><a href="">My cart</a></li>
            <li><a href="">checkout</a></li>
            <li><a href="">Login</a></li>
          </ul>
        </div>
      </div>
      <div class="col-md-3 contact_inf">
        <h1>CORPORATION</h1>
        <div>
          <ul>
            <li><a href="">My account</a></li>
            <li><a href="">Wishlist</a></li>
            <li><a href="">My cart</a></li>
            <li><a href="">checkout</a></li>
            <li><a href="">Login</a></li>
          </ul>
        </div>
      </div>
      <div class="col-md-3 contact_inf">
        <h1>WHY CHOOSE US</h1>
        <div>
          <ul>
            <li><a href="">My account</a></li>
            <li><a href="">Wishlist</a></li>
            <li><a href="">My cart</a></li>
            <li><a href="">checkout</a></li>
            <li><a href="">Login</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>