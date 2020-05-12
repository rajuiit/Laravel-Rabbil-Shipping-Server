@include('layouts.font_header')

<div class="container" style="padding-top: 70px;" >
	<div class="row">
		
		<div class="col-md-6">
			<h2>User Information</h2>
			@if($users)
			<div class="table-responsive">

			<table class="table">
				  <tr>
				    <td>Name:</td>
				    <td>Email:</td>
				    <td>Phone:</td>
 				 </tr>
  	
			@foreach($users as $user)
			
			<tr>
				<td>{{$user->name}}</td>
				
				<td>{{$user->email}}</td>
				<td>{{$user->phone}}</td>
			</tr>
			
			@endforeach
			</table>
		</div>
			@endif
		</div>

		<div class="col-md-6">
				
			<h2>All Orders</h2>
			<div class="table-responsive">
		<table class="table">
			    <thead>
			      <tr>
			        <th>order Id</th>
			        <th>total</th>
			        <th>status</th>
			        <th>order date</th>
			        <th>action</th>
			      </tr>
			    </thead>
			    <tbody>
			    	@if($orders)
			    	@foreach($orders as $order)

			      <tr>
			        <td>{{$order->id}}</td>
			        <td>{{$order->total}}</td>
			        <td class="{{$order->status=='delivered'?'text-danger':''}}">{{$order->status}}</td>
			         <td>{{$order->status=='delivered'?$order->updated_at->diffForHumans():$order->created_at->diffForHumans()}}</td>
			         <td><a class="btn btn-primary" href="{{ url('orders/details/'.$order->id) }}">details</a></td>
			      </tr>
			     @endforeach
			     @endif
			    </tbody>
		  </table>
</div>

		</div>

	</div>

</div>
    </div>
@include('layouts/font_footer')