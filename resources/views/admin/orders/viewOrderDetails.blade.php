@extends('backend.index')

@section('content')

<h1>Order Details:</h1>

<div class="row">
    <div class="col-md-2"></div>

    <div class="col-md-8">

        <div class="table-responsive">

            <table class="table">

                <h5>total orders</h5>
                <thead>
                    <tr>
                        <th>SL/NO</th>
                        <th>OrderId</th>

                        <th>Product Title</th>

                        <th>Price</th>
                        <th>Quentaty</th>

                        <th>Total</th>

                    </tr>

                </thead>

                <tbody>
                    @if($orders->items)
                    @foreach($orders->items as $order)
                    <tr>
                        <td>{{$loop->iteration }}</td>

                        <td>{{$order->order_id}}</td>

                        <td>{{$order->title}}</td>

                        <td>{{$order->price}}</td>
                        <td>{{$order->qty}}</td>

                        <td>{{$order->total}}</td>

                    </tr>

                    @endforeach

                    <tr>
                        <td colspan="5">
                            <a href="{{ url('admin/orders/confirm/'.$orders->id) }}" class="btn btn-primary">
                                delevery
                            </a>
                        </td>
                    </tr>
                    @endif


                </tbody>
            </table>
        </div>
        <div>

            {{-- Delevary Address  --}}
            <div class="table-responsive">
                <table class="table">
                    <h5 style="padding-top: 20px;">Delevary Address</h5>

                    <thead>
                        <tr>
                            <th>name</th>
                            <th>email</th>
                            <th>phone</th>
                            <th>city</th>
                            <th>fullAdd</th>
                        </tr>
                    </thead>
                    <tbody>
                        @if ($orders->address)
                        <tr>
                            <td>{{$orders->address->name}}</td>
                            <td>{{$orders->address->email}}</td>
                            <td>{{$orders->address->phone}}</td>
                            <td>{{$orders->address->city}}</td>
                            <td>{{$orders->address->fullAddress}}</td>

                        </tr>
                        @endif

                    </tbody>
                    <tr>
                        <td colspan="5">
                            <a class="btn btn-primary" href="{{ url('admin/order/users/'.$orders->address->user_id) }}">
                                user details
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

</div>

@endsection

@section('footer')

@endsection