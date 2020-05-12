@include('layouts.font_header')

<div class="container-fluid" style="background-color:#F3F3F3; ">
	<div class="container" style="background-color:#FFFFFF">
		<h2 style="text-align: center; font-size: 30px ;">Your Search Result..</h2>
		<div class="row" style="padding-bottom: 100px; padding-top: 60px;">


@if ($search_data)
	@foreach ($search_data as $product)
	
			<div class="col-md-3" style="text-align: center;">
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