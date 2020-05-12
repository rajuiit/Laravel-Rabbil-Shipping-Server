@extends('backend.index')

@section('content')

<div class="row">
    <div class="col-md-7">
        <h1>Orders Archive page</h1>
    </div>
    <div class="col-md-5">
        <!-- Topbar Search -->
      <form action="{{ route('archive.search') }}" method="get" class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search" style="float: right;">
        <div class="input-group">
            <div class="input-group-prepend">
                <div class="input-group-text">
                    <i class="far fa-calendar-alt"></i>
                </div>
            </div>
          <input type="text" name="daterange" class="form-control small" placeholder="Search for..."
            aria-label="Search" aria-describedby="basic-addon2">
          <div class="input-group-append">
            <button class="btn btn-primary" type="submit">
              <i class="fas fa-search fa-sm"></i>
              Filter
            </button>
          </div>
        </div>
      </form>


    </div>
</div>



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
                            <a href="{{ url('admin/orders/'.$order->id) }}" class="btn btn-primary">
                                view
                            </a>
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

@push('styles')
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
@endpush
@push('scripts')
{{-- <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script> --}}
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>

<script>
    
$('input[name="daterange"]').daterangepicker();
</script>
@endpush