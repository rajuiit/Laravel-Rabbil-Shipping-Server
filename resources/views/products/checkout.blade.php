@include('layouts.font_header')

@include('include.index')

<script>
  $(document).ready(function() {
    $("#CartMsg").hide();
    //$('#CartTotal').hide();
    @foreach($data as $product)
    $("#upCart{{$product->id}}").on('change keyup', function(){
      var newQty = $("#upCart{{$product->id}}").val();
      var rowID = $("#rowID{{$product->id}}").val();
      $.ajax({
          url:'{{url('/cart/update')}}',
          data:'rowID=' + rowID + '&newQty=' + newQty,
          type:'get',
          success:function(response){
            $("#CartMsg").show();
            console.log(response);
            $("#CartMsg").html(response);
          }
      });
    });
    @endforeach
  $('#coupon_btn').click(function(){
      var coupon_id = $('#coupon_id').val();
      //alert(coupon_id);
      $.ajax({
        url:'{{url('/checkCoupon')}}',
        data: 'code=' + coupon_id,
        success:function(res){
       // alert(res);
        $('#cartTotal').html(res);
        }
      })
  });
  });
</script>

<div class="cart_page" style="padding-top:100px;">
  <div class="container" style="background-color:#FFFFFF;">
    <div class="row">
      <div class="col-md-6">
        <h2>Shepping address </h2>
        <div id="tabs">
          <ul>
            <li><a href="#tabs-1">New Address</a></li>
            <li><a href="#tabs-2">Previous Address</a></li>
          </ul>
          <div id="tabs-1">
            {!! Form::open(['action'=>'CheckoutController@placeOrder','files'=>true,'method'=>'POST']) !!}
            <div class="form-group">
              {!! Form::label('name','Name:') !!}
              {!! Form::text('name',null,['class'=>'form-control','placeholder'=>'Name', 'required']) !!}
            </div>
            <div class="form-group">
              {!! Form::label('email','Email:') !!}
              {!! Form::text('email',null,['class'=>'form-control','placeholder'=>'Email', 'required']) !!}
            </div>
            <div class="form-group">
              {!! Form::label('phone','phone:') !!}
              {!! Form::text('phone',null,['class'=>'form-control','placeholder'=>'Phone', 'required']) !!}
            </div>
            <div class="form-group">
              {!! Form::label('city','city:') !!}
              {!! Form::text('city',null,['class'=>'form-control','placeholder'=>'City', 'required']) !!}
            </div>
            <div class="form-group">
              {!! Form::label('fullAddress','Full Address:') !!}
              {!! Form::textarea('fullAddress',null,['class'=>'form-control','rows'=>'2','placeholder'=>'details of your
              address', 'required']) !!}
            </div>
            <div class="form-group">
              {!! Form::submit('Place order',['class'=>'btn btn-primary']) !!}
            </div>
            {!! Form::close() !!}
          </div>
          {{-- shipping  address two  --}}
          <div id="tabs-2">
            @if ($ship_address)
            {!! Form::open(['action'=>'CheckoutController@placeOrder','files'=>true,'method'=>'POST']) !!}
            <div class="form-group">
              {!! Form::label('name','Name:') !!}
              {!!
              Form::text('name',$ship_address->name?$ship_address->name:'',['class'=>'form-control','placeholder'=>'Name',
              'required']) !!}
            </div>
            <div class="form-group">
              {!! Form::label('email','Email:') !!}
              {!!
              Form::text('email',$ship_address->email?$ship_address->email:'',['class'=>'form-control','placeholder'=>'Email',
              'required']) !!}
            </div>
            <div class="form-group">
              {!! Form::label('phone','phone:') !!}
              {!!
              Form::text('phone',$ship_address->phone?$ship_address->phone:'',['class'=>'form-control','placeholder'=>'Phone',
              'required']) !!}
            </div>
            <div class="form-group">
              {!! Form::label('city','city:') !!}
              {!!
              Form::text('city',$ship_address->city?$ship_address->city:'',['class'=>'form-control','placeholder'=>'City',
              'required']) !!}
            </div>
            <div class="form-group">
              {!! Form::label('fullAddress','Full Address:') !!}
              {!!
              Form::textarea('fullAddress',$ship_address->fullAddress?$ship_address->fullAddress:'',['class'=>'form-control','rows'=>'2','placeholder'=>'details
              of your address', 'required']) !!}
            </div>
            <div class="form-group">
              {!! Form::submit('Place order',['class'=>'btn btn-primary']) !!}
            </div>
            {!! Form::close() !!}
            @endif
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="container">
          @if($data)
          <div class="table-responsive">
            <table class="table text-center">
              <thead>
                <tr>
                  <th scope="col">Image</th>
                  <th scope="col">products</th>
                  <th scope="col">Quantity</th>
                  <th scope="col">Price</th>
                </tr>
              </thead>
              <tbody>
                @foreach($data as $product)
                <tr>
                  <td>
                    <img width="50" src="{{ url('product_image') }}/{{ $product->options->image}}" alt="product image">
                  </td>
                  <td>{{$product->name}}</td>
                  <td>
                    {{$product->qty}}
                  </td>
                  <td>{{$product->price}}</td>
                </tr>
                @endforeach
              </tbody>
            </table>
          </div>
          @endif
          <div class="row">
            <div class="col-md-12">
              <hr>
              <div class="pull-right">Total: TK <strong>{{Cart::subtotal()}}</strong> </div>
              <div>
                <a href="{{ url('cart') }}" class="btn btn-primary">
                  Update Cart
                </a>
              </div>
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
        <div class="contact"><i class="fa fa-map-marker" aria-hidden="true"></i><a href="">Diu</a></div>
        <div class="contact"><i class="fa fa-mobile" aria-hidden="true"></i><a href="">+8801762 +8801762</a></div>
        <div class="contact"><i class="fa fa-envelope-o" aria-hidden="true"></i><a href="">rabbi15-242@diu.edu.bd</a>
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