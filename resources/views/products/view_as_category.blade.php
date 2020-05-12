@include('layouts.font_header')

<div class="container-fluid" style="background-color:#F3F3F3;">

	<div class="container" style="background-color:#FFFFFF">
		<div class="row" style="padding-bottom: 100px; padding-top: 60px;">
@if ($types)
	@foreach ($types->products as $product)
	
			<div class="col-md-4" style="text-align: center;">
				<a href="{{ url('') }}/product/{{$product->id}}">
					<img height="150" width="150" src="{{ url('') }}/product_image/{{$product->product_photo}}">
					<p>{{$product->title}}<br>TK:{{$product->price}}</p>
				</a>
			</div>
			@endforeach
		@endif
		</div>
	</div>


</div>

@include('layouts/font_footer')