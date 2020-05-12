@extends('backend.index')

@section('content')

<h1>Orders page</h1>

<div class="row">


    <div class="col-md-12">

        <div class="table-responsive">

            <table class="table">

                <thead>
                    <tr>
                        <th>SL/NO</th>
                        <th>OrderId</th>

                        <th>Buyer Name</th>

                        <th>Total</th>

                        <th>Status</th>
                        <th>Action</th>

                    </tr>
                </thead>

                <tbody>

                    @if($orders)
                    @foreach($orders as $order)
                    <tr>
                        <td>{{$loop->iteration}}</td>
                        <td>{{$order->id}}</td>

                        <td>{{$order->user->name}}</td>

                        <td>{{$order->total}}</td>

                        <td>{{$order->status}}</td>

                        <td>
                            <a href="{{ url('admin/orders/'.$order->id) }}" class="btn btn-info">
                                View
                            </a>
                            <a class="btn btn-warning" href="{{ route('make_order.cancel', $order->id) }}"
                                onclick="event.preventDefault(); document.getElementById('cancel-form-{{$order->id}}').submit();">
                                {{ __('Cancel') }}
                            </a>

                            <form id="cancel-form-{{$order->id}}" action="{{ route('make_order.cancel', $order->id) }}"
                                method="POST" style="display: none;">
                                @csrf
                                @method("PUT")
                            </form>
                        </td>

                    </tr>

                    @endforeach
                    @endif

                </tbody>
            </table>
        </div>
    </div>

</div>

@endsection

@section('footer')

@endsection