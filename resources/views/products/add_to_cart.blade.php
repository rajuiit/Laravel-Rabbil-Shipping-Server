@include('layouts.font_header')

<div class="add_to_cart" style="background-color:#F3F3F3" >

    <div class="container" style="padding-top:70px; ">

        <div class="row">



@if($products)



            <div class="col-md-9"  >
                <div class="container" style="background-color:#FFFFFF; padding-top:20px;padding-bottom:50px;">



                 


                    <div class="row">
  
                        <div class="col-md-5">

                            <div class="product_image">

                                <img width="300" src="{{ url('') }}/product_image/{{$products->product_photo}}" alt="product_image">
                              



                            </div>

                        </div>

                        <div class="col-md-7">

                            <h1 style="padding-bottom:20px;">{{$products->title}}</h1>

                            <hr>

                            <p style="padding-bottom:20px;">{{$products->description}}</p>


                            <hr>
                            <p style="color: red;"><strong>Discount: <del class="">{{$products->discount_price}}</del> </strong>TK</p>
                            <h3 style="color:#FF7878; padding-bottom:20px;"><strong>price:</strong>{{$products->price}}Tk</h3>

                            <hr>

                            <div class="row" style="padding-bottom:20px;">

                                <div class="col-md-4">

                                   
                                   <a href="{{ url('cart/add')}}/{{$products->id}}"> <button class="btn btn-primary">Add to cart</button></a>


                                </div>

{{-- 
{!! Form::model($products,array(['action'=>['cartController@addItem',$products->id],'files'=>true,'method'=>'PATCH'])) !!} --}}


{{-- <form action="{{ URL::route('createComment', array('id'=>$post->id))}}" method="POST">
                             {{csrf_token()}} --}}
                                <div class="col-md-4">





{{-- 
                           <div class="form-group">
                                {!! Form::label('product_quantity','Is Active:') !!}

                                {!! Form::select('product_quantity',array('1'=>'1','2' =>'2','3' =>'3'),null,['class'=>'form-control']) !!}

                            </div> --}}

                                   {{--  <select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
                                        <option selected>Choose...</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                    </select> --}}



                                </div>


                                <div class="col-md-4">
{{-- 
                                   <a href="{{ url('cart/add')}}/{{$products->id}}"> <button class="btn btn-primary">Add to cart</button></a>
 --}}

                                </div>


                               {{-- {!! Form::close() !!} --}}

                          {{--  </form> --}}

                            </div>

                            <hr>

                            <h5 style="padding-top:10px;">CATEGORY: <strong style="color:#FF7878">{{$products->product_quality}}</strong></h5>


                        </div>
                    </div>


                    
                </div>


            </div>

            @endif


        </div>


    </div>

</div>
@include('layouts/font_footer')