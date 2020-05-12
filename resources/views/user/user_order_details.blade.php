@include('layouts.font_header')
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  /*border: 1px solid #dddddd;*/
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: white;
}
</style>

<div class="container" style="padding-top: 70px;" >
	<div class="row">

		<div class="col-md-6">
			<h2>Your Order</h2>
@if ($orders)
<div class="table-responsive">

<table class="table">
	<thead>
		<tr>
			<th>Id</th>
			<th>OrderId</th>
			<th>ProductName</th>
			<th>qty</th>
			<th>total</th>
		</tr>
	</thead>

<tbody>
@foreach ($orders->items as $order)

	<tr>
		<td>{{$loop->index+1}}</td>
		<td>{{$order->order_id}}</td>
		<td>{{$order->title}}</td>
		<td>{{$order->qty}}</td>
		<td>{{$order->total}}</td>
	</tr>
@endforeach

<?php $count=0; ?>
@foreach ($orders->items as $view_receipt)
<?php if($count>=1) break; ?>
<div>
	<tr>
		<td colspan="5">
		<a class="btn btn-primary" href="{{ url('orders/pdf/'.$view_receipt->order_id) }}">download receipt</a>
		</td>
	</tr>
</div>

	<?php $count++?>
@endforeach
</tbody>	
</table>
</div>
@endif

	</div>


<div class="col-md-6">
	<div style="padding-left: 20px;">
	<h2>Shipping Address</h2>
	<div class="table-responsive">
	@if ($d_address)
	<table class="table">
		<thead>
			<tr>
				{{-- <th>orderId</th> --}}
				<th>name</th>
				<th>email</th>
				<th>phone</th>
				<th>city</th>
				<th>fullAdd</th>

			</tr>
		</thead>

		<tbody >
			<tr>
				<td>{{$d_address->name}}</td>
				<td>{{$d_address->email}}</td>
				
				<td>{{$d_address->phone}}</td>
				
				<td>{{$d_address->city}}</td>
				
				<td>{{$d_address->fullAddress}}</td>

			</tr>
		</tbody>

@endif
	</table>
</div>
		<a class="btn btn-primary" href="{{ url('order/address/edit/'.$d_address->id) }}">updateAddress</a>
</div>
	
</div>




</div>
</div>
    </div>
@include('layouts/font_footer')