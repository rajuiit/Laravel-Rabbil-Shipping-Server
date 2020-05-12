@include('layouts.font_header')


<script>
    $(document).ready(function() {
        $("#CartMsg").hide();
        @foreach($data as $product)
        $("#upCart{{$product->id}}").on('change keyup', function(){
            var newQty = $("#upCart{{$product->id}}").val();
            var rowID = $("#rowID{{$product->id}}").val();
            $.ajax({
                url:'{{url('/cart/update')}}',
                data:'rowID=' + rowID + '&newQty=' + newQty,
                type:'get',
                success: function() {   
                    location.reload();  
                }
            });
        });
        @endforeach
        $('#coupon_btn').click(function(){
            var coupon_id = $('#coupon_id').val();
            $.ajax({
                url:'{{url('/checkCoupon')}}',
                data: 'code=' + coupon_id,
                success:function(res){
                    $('#cartTotal').html(res);
                }
            })
        });
    });
</script>
<div class="cart_page" style="padding-top:100px;">
    <div class="container" style="background-color:#FFFFFF;">
        @if($data)
        <div class="table-responsive">
            <table class="table text-center">
                <thead>
                    <tr>
                        <th>Remove</th>
                        <th>Image</th>
                        <th>products</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $cnt=1; ?>
                    @foreach($data as $product)
                    <tr>
                        <th>
                            <a style="font-size: 30px; color: red;" data-toggle="modal" data-target="#exampleModal"><i
                                    class="fa fa-trash-o" aria-hidden="true"></i></a></th>
                        <td>
                            <img width="100" src="{{ url('product_image') }}/{{ $product->options->image}}"
                                alt="product image">
                        </td>
                        <td>{{$product->name}}</td>
                        <td>{{$product->price}}</td>
                        <td>
                            <input type="hidden" value="{{$product->rowId}}" id="rowID{{$product->id}}" />
                            <div class="center">
                                <div class="input-group">
                                    <span class="input-group-prepend">
                                        <button type="button" class="btn btn-secondary btn-number" data-type="minus"
                                            data-field="quant{{$product->id}}">
                                            &minus;
                                        </button>
                                    </span>
                                    <input type="text" name="quant{{$product->id}}" class="form-control"
                                        value="{{$product->qty}}" min="1" max="10" id="upCart{{$product->id}}">
                                    <span class="input-group-append">
                                        <button type="button" class="btn btn-secondary btn-number" data-type="plus"
                                            data-field="quant{{$product->id}}">
                                            &plus;
                                        </button>
                                    </span>
                                </div>
                            </div>
                        </td>
                        <td>{{$product->subtotal}}</td>
                    </tr>
                    {{-- modal  --}}
                    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
                        aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <p style="text-align: center;color: red;">are you sure want to delete cart??</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <a class="btn btn-danger" href="{{ url('cart/remove') }}/{{$product->rowId}}">
                                        delete</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    {{-- end modal  --}}
                    @endforeach
                </tbody>
            </table>
        </div>
        @endif

        <div class="row">
            <div class="col-md-6">
                <div class="text-left" style="padding-top:50px;padding-bottom:50px;">
                    <a href="{{ url('checkout') }}">
                        <button class="btn btn-primary">proceed to checkout</button>
                    </a>
                </div>
            </div>
            <div class="col-md-6">
                <div class=" text-right" style="padding-top:50px;padding-bottom:50px;">
                    <a class="btn btn-primary" href="{{ url('/') }}">Continue Shopping</a>
                </div>
            </div>
        </div>
    </div>
</div>

<style type="text/css">
    .center {
        width: 27%;
        /*margin: 40px auto;*/
    }
</style>
<script type="text/javascript">
    //plugin bootstrap minus and plus
    //http://jsfiddle.net/laelitenetwork/puJ6G/
$('.btn-number').click(function(e){
    e.preventDefault();
    
    fieldName = $(this).attr('data-field');
    type      = $(this).attr('data-type');

    console.log(type);
    // console.log(tes);

    var input = $("input[name='"+fieldName+"']");
    // var input = $("")
    var currentVal = parseInt(input.val());
    if (!isNaN(currentVal)) {
        if(type == 'minus') {
            
            if(currentVal > input.attr('min')) {
                input.val(currentVal - 1).change();
            } 
            if(parseInt(input.val()) == input.attr('min')) {
                $(this).attr('disabled', true);
            }

        } else if(type == 'plus') {

            if(currentVal < input.attr('max')) {
                input.val(currentVal + 1).change();
            }
            if(parseInt(input.val()) == input.attr('max')) {
                $(this).attr('disabled', true);
            }

        }
    } else {
        input.val(0);
    }
});
$('.input-number').focusin(function(){
    $(this).data('oldValue', $(this).val());
});
$('.input-number').change(function() {
    
    minValue =  parseInt($(this).attr('min'));
    maxValue =  parseInt($(this).attr('max'));
    valueCurrent = parseInt($(this).val());
    
    name = $(this).attr('name');
    if(valueCurrent >= minValue) {
        $(".btn-number[data-type='minus'][data-field='"+name+"']").removeAttr('disabled')
    } else {
        alert('Sorry, the minimum value was reached');
        $(this).val($(this).data('oldValue'));
    }
    if(valueCurrent <= maxValue) {
        $(".btn-number[data-type='plus'][data-field='"+name+"']").removeAttr('disabled')
    } else {
        alert('Sorry, the maximum value was reached');
        $(this).val($(this).data('oldValue'));
    }
    
    
});
$(".input-number").keydown(function (e) {
        // Allow: backspace, delete, tab, escape, enter and .
        if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 190]) !== -1 ||
             // Allow: Ctrl+A
            (e.keyCode == 65 && e.ctrlKey === true) || 
             // Allow: home, end, left, right
            (e.keyCode >= 35 && e.keyCode <= 39)) {
                 // let it happen, don't do anything
                return;
        }
        // Ensure that it is a number and stop the keypress
        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
            e.preventDefault();
        }
    });
</script>
{{-- @endforeach --}}
{{-- footer  --}}
<div class="footer">
    <div class="container">
        <div class="row ">
            <div class="col-md-3 contact_inf">
                <h1>CONTACT US</h1>
                <div class="contact"><i class="fa fa-map-marker" aria-hidden="true"></i><a href="">Diu</a></div>
                <div class="contact"><i class="fa fa-mobile" aria-hidden="true"></i><a href="">+8801762 +8801762</a>
                </div>
                <div class="contact">
                    <i class="fa fa-envelope-o" aria-hidden="true"></i>
                    <a href="">rabbi15-242@diu.edu.bd</a>
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