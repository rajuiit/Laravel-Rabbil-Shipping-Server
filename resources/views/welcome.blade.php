@include('layouts.font_header')
<style >
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}
</style>

<!--  banner section --><!--  banner section --><!--  banner section -->
<!--  banner section --><!--  banner section --><!--  banner section -->

<div class="banner-section" style="background-color: #F3F3F3;" >
<div class="container-fluid">
    <div class="container">

        <div class="row">

            <!-- Catagory   Catagory  Catagory Catagory Catagory -->
            <!-- Catagory   Catagory  Catagory Catagory Catagory -->
            <!-- Catagory   Catagory  Catagory Catagory Catagory -->

            <div class="col-md-3" style="font-size: 13px;" >
                <div style="padding-bottom: 30px;">
                       @if($categorys)

                         <div class="list-group market-group-list">
                            <a style="background-color: orange;" href="#" class="list-group-item list-group-item-action ">
                                <i class="fa fa-bars icons" aria-hidden="true"></i>
                                CATEGORIES
                            </a>
                       </div>

                            @foreach ($categorys as $category)
                    <div class="item-list" style="background-color: #FFFFFF;">
                        <div class="nav-item dropdown">
                            <a href="#" class="list-group-item list-group-item-action"><i class="fa fa-clock-o icons" aria-hidden="true"></i>{{$category->category_name}} <i style="float:right;" class="fa fa-angle-right" aria-hidden="true"></i></a>
                             @foreach ($category->types as $type)
                        <div class="dropdown-menu product-menu product-menu-style "  aria-labelledby="navbarDropdown" >

                                <div class="container">
                                    <div class="row">
                                                                              
                                        
                                        <div class="col-md-4">
                                              <table>
                                                   <tr>
                                                    <th style="background-color: #0F6CB2; color: white; text-transform: uppercase; text-align: center;">

                                             {{$type->type_name}} 

                                                    </th>
                                             </tr>
                                           </table>
                                            @foreach ($type->products as $key)
                                               
                                                     {{-- <li></li> --}}
                                                     <table>
                                                         
                                                          <tr>
                                                            <td style="background-color: #FFFFFF;"><a href="{{ url('product/title') }}/{{$key->title}}">{{$key->title}}</a></td>
                                                            
                                                          </tr>

                                                        </table>
                                                  @endforeach
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                          @endforeach
                        @endif
                </div> 
{{-- cagegory end here --}}
                <div style="padding-top: 20px;">
    
                    <div class="discount_tag">
                        <h5 class="text-uppercase">Product tag</h5>
                        <hr>
                        <div class="row">
                            @if ($categorys)
                                {{-- expr --}}
                            @foreach ($categorys as $category)
                            <div class="col-md-6">
                                <a href="{{ url('product/category/'.$category->id) }}"><p>{{$category->category_name}}</p></a>
                            </div>  
                             @endforeach  
                            @endif   
                        </div>
                    </div>
                </div>
            </div>
            <!-- Catagory   Catagory  Catagory Catagory Catagory -->
            <!-- Catagory   Catagory  Catagory Catagory Catagory -->
            <!-- Catagory   Catagory  Catagory Catagory Catagory -->
            <div class="col-md-9">
                <div>
                    <!-- slider  -->
                    <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">

                                <img class="d-block w-100" src="{{asset('frontend/img/sl.jpg')}}" alt="First slide">

                                <div class="container">
                                    <div class="carousel-caption bann_text">
                                        <h5>Top Brand</h5>
                                        
                                        <button type="button" class="btn succ" >Success</button>

                                    </div>
                                </div>

                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>



                        </div>

                    </div>

                </div>

                <!-- After Slider  -->
                <div style="padding-bottom: 30px;">
                    <div class="money_free_spetial">
                        <div class="container">
                            <div class="row">

                                <div class="col-md-4">
                                    <i class="fa fa-money" aria-hidden="true"></i>
                                    <h1>MONEY BACK</h1>
                                    <p>30 Days Money Back Guarantee</p>

                                </div>
                                <div class="col-md-4">
                                    <i class="fa fa-truck" aria-hidden="true"></i>
                                    <h1>FREE SHIPPING</h1>
                                    <p>Shipping on orders over $99</p>

                                </div>
                                <div class="col-md-4">
                                    <i class="fa fa-sellsy" aria-hidden="true"></i>
                                    <h1>SPECIAL SALE</h1>
                                    <p>Extra $5 off on all items</p>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- New Footware -->

                <div>
                    <div class="hot_deals" >

                        <div class="cat_title" >
                            <h3>TOP PRODUCTS</h3><hr>
                        </div>

                        <div class="row">
                          
                            @foreach($tob_products as $tob_product)
                            <div class="col-md-3 " >
                               <a  href="{{ url('') }}/product/{{$tob_product->id}}">
                                   <img height="200"  class="d-block w-100 top_product_hover" src="{{ url('') }}/product_image/{{$tob_product->product_photo}}" alt="Second slide">
                            </a>
                            </div>
                            @endforeach

                        </div>
                    </div>
{{$tob_products->links()}}
                </div>


                {{-- discount product --}}



               
           </div>

        </div>
    </div>

</div>
</div>


<!--  banner section --><!--  banner section --><!--  banner section -->
<!--  banner section --><!--  banner section --><!--  banner section -->


<!-- T-Shirt  -->

<div style="background-color:#F3F3F3">

<div class="container" >
    <div class="row">
        <div class="col-md-3 " style="padding-top: 15px;">
            <div class="winter_collection"  style="padding-bottom: 195px;">
                <h1>T-Cargo</h1>

                @if($product)

<?php $tsrt=0;?>
      <ul>
    @foreach($product as $prdc)


        @if($prdc->type->type_name == 'Cargo Vessel')
               

          
                    <li><a href="{{ url('product/title') }}/{{$prdc->title}}">{{$prdc->title}}</a></li>
     <?php 
        $tsrt++;

        if ($tsrt==6){
            break;
        }
        

        ?>


        @endif
    @endforeach

         </ul>
@endif
            </div>

        </div>

        <div class="col-md-9 prodct_section" >
            <div class="container" style="background-color:#FFFFFF ;">
                <div class="row" style="padding-top: 13px;padding-bottom: 13px;">
                    <div class="col-md-4">


                        <div id="test" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">




@if($product)


    @foreach($product->take(4) as $prdc)

     @if($prdc->type->type_name == 'Cargo Vessel')
        <div class="carousel-item @if($loop->first) active @endif">

<a  href="{{ url('') }}/product/{{$prdc->id}}">
       <img   class="d-block w-100" src="{{ url('') }}/product_image/{{$prdc->product_photo}}" alt="Second slide">
</a>

          </div>
    @endif
@endforeach
@endif
        




                            </div>
       <a class="carousel-control-prev" href="#test" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#test" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
                        </div>


                    </div>


     <div class="col-md-8 cont">
    


 <div >

                         
 <div class="row" style="padding: 5px;">

@if($product)


<?php $count = 0; ?>
    @foreach($product as $prdc)


        @if($prdc->type->type_name == 'Cargo Vessel')

         <?php if($count == 6) break; ?>

        <div class="col-md-4 product_hover" >



            <a  href="{{ url('') }}/product/{{$prdc->id}}">

                <img  class="d-block w-100" src="{{ url('') }}/product_image/{{$prdc->product_photo}}" alt="Second slide">

                <p>{{$prdc->title}}<br>{{$prdc->price}}</p>
                {{-- <p></p> --}}


            </a>
            {{-- <a   href="{{ url('cart/add') }}/{{$prdc->id}}"><i  class="fa fa-cart-plus" aria-hidden="true"></i></a> --}}

        </div>




<?php $count++; ?>

        @endif

@endforeach
                         

@endif

    </div>



</div>







                        <!-- </div> -->
                    </div>

                </div>

            </div>



        </div>


    </div>

</div>

</div>





<!-- Muslim Fashion -->



<div style="background-color:#F3F3F3">

<div class="container" >
    <div class="row">
        <div class="col-md-3 product_collec" style="padding-top: 13px;">
            <div class="winter_collection">
                
         <h1>M-Cargo</h1>



@if($product)

<?php $musl=0;?>
      <ul>
    @foreach($product as $prdc)


        @if($prdc->type->type_name == 'Muslim Fashion')
               

          
                    <li><a href="{{ url('product/title') }}/{{$prdc->title}}">{{$prdc->title}}</a></li>
   

     <?php 
        $musl++;

        if ($musl==6){
            break;
        }
        

        ?>



        @endif
    @endforeach

         </ul>
@endif





            </div>

        </div>
        <div class="col-md-9 prodct_section" >
            <div class="container" style="background-color:#FFFFFF ;">
                <div class="row" style="padding-top: 13px;padding-bottom: 13px;">
                    <div class="col-md-4">

       <div id="testTow" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">



 @php $i=0; @endphp
@if($product)


    @foreach($product as $prdc)

    

 @if($i<4)
     @if($prdc->type->type_name == 'Muslim Fashion')
     
        <div class="carousel-item {{($i == 0)?'active':''}} ">
       @php $i++; @endphp

<a  href="{{ url('') }}/product/{{$prdc->id}}">
       <img   class="d-block w-100" src="{{ url('') }}/product_image/{{$prdc->product_photo}}" alt="Second slide">
</a>

          </div>
          
    @endif
    
    @endif
@endforeach
@endif
        




                            </div>
       <a class="carousel-control-prev" href="#testTow" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#testTow" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
                        </div>


                    </div>
                    <div class="col-md-8 cont">
                        <!-- <div class="container"> -->

               
                          


<div >

                         
 <div class="row">

@if($product)


<?php $count = 0; ?>
    @foreach($product as $prdc)


        @if($prdc->type->type_name == 'Muslim Fashion')

         <?php if($count == 6) break; ?>

        <div class="col-md-4 product_hover" >



            <a  href="{{ url('') }}/product/{{$prdc->id}}">

                <img  class="d-block w-100" src="{{ url('') }}/product_image/{{$prdc->product_photo}}" alt="Second slide">

                <p>{{$prdc->title}}<br>{{$prdc->price}}</p>
                {{-- <p></p> --}}


            </a>
            {{-- <a  href="{{ url('cart/add') }}/{{$prdc->id}}"><i  class="fa fa-cart-plus" aria-hidden="true"></i></a> --}}

        </div>




<?php $count++; ?>

        @endif

@endforeach
                         

@endif

   </div>









                    </div>

                </div>

            </div>



        </div>


    </div>

</div>

</div>




<!-- Jewelry -->



<div style="background-color:#F3F3F3">

<div class="container" >
    <div class="row">
        <div class="col-md-3 product_collec" style="padding-top: 13px;">
            <div class="winter_collection">
                <h1>J-Cargo</h1>

               
@if($product)

<?php $jew=0;?>
      <ul>
    @foreach($product as $prdc)


        @if($prdc->type->type_name == 'Jewelry')
               

          
                    <li><a href="{{ url('product/title') }}/{{$prdc->title}}">{{$prdc->title}}</a></li>
   
     <?php 
        $jew++;

        if ($jew==6){
            break;
        }
        

        ?>


        @endif
    @endforeach

         </ul>
@endif





    </div>

        </div>
        <div class="col-md-9 prodct_section " >
            <div class="container" style="background-color:#FFFFFF ;">
                <div class="row" style="padding-top: 13px;padding-bottom: 13px;">
                    <div class="col-md-4">

                        <div id="testThree" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                             


 @php $i=0; @endphp
@if($product)


    @foreach($product as $prdc)

    

 @if($i<4)
     @if($prdc->type->type_name == 'Jewelry')
     
        <div class="carousel-item {{($i == 0)?'active':''}} ">
       @php $i++; @endphp

<a  href="{{ url('') }}/product/{{$prdc->id}}">
       <img   class="d-block w-100" src="{{ url('') }}/product_image/{{$prdc->product_photo}}" alt="Second slide">
</a>

          </div>
          
    @endif
    
    @endif
@endforeach
@endif
        





                            </div>
                           
                            <a class="carousel-control-prev" href="#testThree" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#testThree" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>


                    </div>
                    <div class="col-md-8 cont">






              <div class="row">

@if($product)


<?php $count = 0; ?>
    @foreach($product as $prdc)


        @if($prdc->type->type_name == 'Jewelry')

         <?php if($count == 6) break; ?>

        <div class="col-md-4 product_hover" >



            <a  href="{{ url('') }}/product/{{$prdc->id}}">

                <img   class="d-block w-100" src="{{ url('') }}/product_image/{{$prdc->product_photo}}" alt="Second slide">

                <p>{{$prdc->title}}<br>{{$prdc->price}}</p>
                {{-- <p></p> --}}


            </a>
            {{-- <a  href="{{ url('cart/add') }}/{{$prdc->id}}"><i  class="fa fa-cart-plus" aria-hidden="true"></i></a> --}}

        </div>




<?php $count++; ?>

        @endif

@endforeach
                         

@endif

    </div>









                    </div>

                </div>

            </div>



        </div>


    </div>

</div>

</div>








<!-- Cosmetics -->




<div style="background-color:#F3F3F3">

<div class="container" >
    <div class="row">
        <div class="col-md-3 product_collec" style="padding-top: 13px;">
            <div class="winter_collection">
                <h1>P-Cargo</h1>

               @if($product)


      <ul>
        <?php $pnt=0; ?>
    @foreach($product as $prdc )


        @if($prdc->type->type_name == 'Pants')
               

          
                    <li><a href="{{ url('product/title') }}/{{$prdc->title}}">{{$prdc->title}}</a></li>
        <?php 
        $pnt++;

        if ($pnt==6){
            break;
        }
        

        ?>

        @endif
    @endforeach

         </ul>
@endif

            </div>

        </div>
        <div class="col-md-9 prodct_section " >
            <div class="container" style="background-color:#FFFFFF ;">
                <div class="row" style="padding-top: 13px;padding-bottom: 13px;">
                    <div class="col-md-4">

                        <div id="testFour" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                               

 @php $i=0; @endphp
@if($product)


    @foreach($product as $prdc)

    

 @if($i<4)
     @if($prdc->type->type_name == 'Pants')
     
        <div class="carousel-item {{($i == 0)?'active':''}} ">
       @php $i++; @endphp

<a  href="{{ url('') }}/product/{{$prdc->id}}">
       <img   class="d-block w-100" src="{{ url('') }}/product_image/{{$prdc->product_photo}}" alt="Second slide">
</a>

          </div>
          
    @endif
    
    @endif
@endforeach
@endif
       



                            </div>
                            <a class="carousel-control-prev" href="#testFour" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#testFour" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>


                    </div>
                    <div class="col-md-8 cont">


                        <div class="row">

@if($product)


<?php $count = 0; ?>
    @foreach($product as $prdc)


        @if($prdc->type->type_name == 'Pants')

         <?php if($count == 6) break; ?>

        <div class="col-md-4 product_hover" >



            <a  href="{{ url('') }}/product/{{$prdc->id}}">

                <img   class="d-block w-100" src="{{ url('') }}/product_image/{{$prdc->product_photo}}" alt="Second slide">

                <p>{{$prdc->title}}<br>{{$prdc->price}}</p>
                {{-- <p></p> --}}
{{--  <a  href="{{ url('cart/add') }}/{{$prdc->id}}"><i  class="fa fa-cart-plus" aria-hidden="true"></i></a> --}}

            </a>
           {{--  <a   href="{{ url('cart/add') }}/{{$prdc->id}}"><i  class="fa fa-cart-plus" aria-hidden="true"></i></a> --}}

        </div>




<?php $count++; ?>

        @endif

@endforeach
                         

@endif

    </div>


                    </div>

                </div>

            </div>



        </div>


    </div>

</div>

</div>

<!-- footer section -->

@include('layouts/font_footer')
















</div>

























<script>
$('.cosmetics_slide').cosmetics_slide({
interval: 2000
})

</script>












<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" ></script>
</body>
</html>




