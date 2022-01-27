@extends('master.back')

@section('content')

<div class="container-fluid">

    {{-- Version 2.2 --}}

    <!-- Page Heading -->

    <div class="card mb-4">
        <h3 class="mb-0 px-3 py-4"><b>{{ __('Dashboard') }}</b></h3>
    </div>


    @include('alerts.alerts')
  <!-- Content Row -->
  <div class="row">

    <div class="col-xl-4 col-md-6">
        <div class="card card-stats card-round">
            <div class="card-body ">
                <div class="row align-items-center">
                    <div class="col-icon">
                        <div class="icon-big text-center icon-primary bubble-shadow-small">
                            <i class="far fa-check-circle"></i>
                        </div>
                    </div>
                    <div class="col col-stats ml-3 ml-sm-0">
                        <div class="numbers">
                            <p class="mb-0"><b>{{ __('Total Orders') }}</b></p>
                            <h4 class="card-title">{{ $totalOrders }}</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </div>

      <div class="col-xl-4 col-md-6">
        <div class="card card-stats card-round">
            <div class="card-body ">
                <div class="row align-items-center">
                    <div class="col-icon">
                        <div class="icon-big text-center icon-primary bubble-shadow-small">
                            <i class="far fa-check-circle"></i>
                        </div>
                    </div>
                    <div class="col col-stats ml-3 ml-sm-0">
                        <div class="numbers">
                            <p class="mb-0"><b>{{ __('Pending Orders') }}</b></p>
                            <h4 class="card-title">{{ $totalOrders }}</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </div>

        <!-- Pending Requests Card Example -->
        <div class="col-xl-4 col-md-6">
            <div class="card card-stats card-round">
                <div class="card-body ">
                    <div class="row align-items-center">
                        <div class="col-icon">
                            <div class="icon-big text-center icon-primary bubble-shadow-small">
                                <i class="far fa-check-circle"></i>
                            </div>
                        </div>
                        <div class="col col-stats ml-3 ml-sm-0">
                            <div class="numbers">
                                <p class="mb-0"><b>{{ __('Total Products') }}</b></p>
                                <h4 class="card-title">{{ $totalItems }}</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

      <div class="col-xl-4 col-md-6">
        <div class="card card-stats card-round">
            <div class="card-body ">
                <div class="row align-items-center">
                    <div class="col-icon">
                        <div class="icon-big text-center icon-primary bubble-shadow-small">
                            <i class="far fa-check-circle"></i>
                        </div>
                    </div>
                    <div class="col col-stats ml-3 ml-sm-0">
                        <div class="numbers">
                            <p class="mb-0"><b>{{ __('Total Customers') }}</b></p>
                            <h4 class="card-title">{{ $totalUsers }}</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>

      </div>


      <div class="col-xl-4 col-md-6">
        <div class="card card-stats card-round">
            <div class="card-body ">
                <div class="row align-items-center">
                    <div class="col-icon">
                        <div class="icon-big text-center icon-primary bubble-shadow-small">
                            <i class="far fa-check-circle"></i>
                        </div>
                    </div>
                    <div class="col col-stats ml-3 ml-sm-0">
                        <div class="numbers">
                            <p class="mb-0"><b>{{ __('Total Categories') }}</b></p>
                            <h4 class="card-title">{{ $totalCategory }}</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </div>

      <div class="col-xl-4 col-md-6">
        <div class="card card-stats card-round">
            <div class="card-body ">
                <div class="row align-items-center">
                    <div class="col-icon">
                        <div class="icon-big text-center icon-primary bubble-shadow-small">
                            <i class="far fa-check-circle"></i>
                        </div>
                    </div>
                    <div class="col col-stats ml-3 ml-sm-0">
                        <div class="numbers">
                            <p class="mb-0"><b>{{ __('Total Brands') }}</b></p>
                            <h4 class="card-title">{{ $totalBrand }}</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </div>

      <div class="col-xl-4 col-md-6">
        <div class="card card-stats card-round">
            <div class="card-body ">
                <div class="row align-items-center">
                    <div class="col-icon">
                        <div class="icon-big text-center icon-primary bubble-shadow-small">
                            <i class="far fa-check-circle"></i>
                        </div>
                    </div>
                    <div class="col col-stats ml-3 ml-sm-0">
                        <div class="numbers">
                            <p class="mb-0"><b>{{ __('Total Reviews') }}</b></p>
                            <h4 class="card-title">{{ $totalReview }}</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </div>

      <div class="col-xl-4 col-md-6">
        <div class="card card-stats card-round">
            <div class="card-body ">
                <div class="row align-items-center">
                    <div class="col-icon">
                        <div class="icon-big text-center icon-primary bubble-shadow-small">
                            <i class="far fa-check-circle"></i>
                        </div>
                    </div>
                    <div class="col col-stats ml-3 ml-sm-0">
                        <div class="numbers">
                            <p class="mb-0"><b>{{ __('Total Transactions') }}</b></p>
                            <h4 class="card-title">{{ $totalTransaction }}</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </div>

      <div class="col-xl-4 col-md-6">
        <div class="card card-stats card-round">
            <div class="card-body ">
                <div class="row align-items-center">
                    <div class="col-icon">
                        <div class="icon-big text-center icon-primary bubble-shadow-small">
                            <i class="far fa-check-circle"></i>
                        </div>
                    </div>
                    <div class="col col-stats ml-3 ml-sm-0">
                        <div class="numbers">
                            <p class="mb-0"><b>{{ __('Pending Tickets') }}</b></p>
                            <h4 class="card-title">{{ $totalPendingTicket }}</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </div>

      <div class="col-xl-4 col-md-6">
        <div class="card card-stats card-round">
            <div class="card-body ">
                <div class="row align-items-center">
                    <div class="col-icon">
                        <div class="icon-big text-center icon-primary bubble-shadow-small">
                            <i class="far fa-check-circle"></i>
                        </div>
                    </div>
                    <div class="col col-stats ml-3 ml-sm-0">
                        <div class="numbers">
                            <p class="mb-0"><b>{{ __('Total Tickets') }}</b></p>
                            <h4 class="card-title">{{ $totalTicket }}</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </div>
      <div class="col-xl-4 col-md-6">
        <div class="card card-stats card-round">
            <div class="card-body ">
                <div class="row align-items-center">
                    <div class="col-icon">
                        <div class="icon-big text-center icon-primary bubble-shadow-small">
                            <i class="far fa-check-circle"></i>
                        </div>
                    </div>
                    <div class="col col-stats ml-3 ml-sm-0">
                        <div class="numbers">
                            <p class="mb-0"><b>{{ __('Total Blogs') }}</b></p>
                            <h4 class="card-title">{{ $totalBlog }}</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </div>
      <div class="col-xl-4 col-md-6">
        <div class="card card-stats card-round">
            <div class="card-body ">
                <div class="row align-items-center">
                    <div class="col-icon">
                        <div class="icon-big text-center icon-primary bubble-shadow-small">
                            <i class="far fa-check-circle"></i>
                        </div>
                    </div>
                    <div class="col col-stats ml-3 ml-sm-0">
                        <div class="numbers">
                            <p class="mb-0"><b>{{ __('Total Subscribers') }}</b></p>
                            <h4 class="card-title">{{ $totalSubscriber }}</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </div>


  </div>

  <!-- Content Row -->

  <div class="row">

    <div class="col-xl-12 col-lg-12">
       <div class="card shadow mb-4">
          <div class="card-header py-3">
             <h6 class="m-0 font-weight-bold text-primary">{{ __('Recent Orders') }}</h6>
          </div>
          <div class="card-body">
              @if ($recentOrders->count() > 0)
                <div class="gd-responsive-table">
                    <table class="table table-bordered table-striped" id="recent-orders" width="100%" cellspacing="0">
                    <thead>
                        <th>{{ __('Customer Name') }}</th>
                        <th>{{ __('Order Transaction ID') }}</th>
                        <th>{{ __('Payment Method') }}</th>
                        <th>{{ __('Total Price') }}</th>
                    </thead>
                    <tbody>
                        @foreach($recentOrders as $data)
                        <tr>
                            <td>
                                {{ $data->user->first_name }} {{ $data->user->last_name }}
                            </td>
                            <td>
                                {{ $data->transaction_number}}
                            </td>
                            <td>
                                {{ $data->payment_method}}
                            </td>
                            <td>
                                {{$data->currency_sign}}{{PriceHelper::OrderTotal($data)}}
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                    </table>
                </div>

                @else
                <p class="d-block text-center">
                    {{ __('No Order Found') }}
                </p>
              @endif


          </div>
       </div>
    </div>
    <div class="col-xl-12">
       <div class="card shadow mb-4">
          <div class="card-header py-3">
             <h6 class="m-0 font-weight-bold text-primary">{{ __('Recent Customer') }}</h6>
          </div>
          <div class="card-body">
            @if ($recentUsers->count() > 0)
             <div class="gd-responsive-table">
                <table class="table table-bordered table-striped" id="recent-orders" width="100%" cellspacing="0">
                   <thead>
                      <th>{{ __('Customer Name') }}</th>
                      <th>{{ __('Email') }}</th>
                      <th>{{ __('Phone') }}</th>
                   </thead>
                   <tbody>
                      @foreach($recentUsers as $customer)
                      <tr>
                         <td>
                            {{ $customer->first_name }} {{ $customer->last_name }}
                         </td>
                         <td>
                          {{ $customer->email }}
                         </td>
                         <td>
                          {{ $customer->phone }}
                         </td>


                      </tr>
                      @endforeach
                   </tbody>
                </table>
             </div>
             @else
             <p class="d-block text-center">
                 {{ __('No Customer Found') }}
             </p>
           @endif

          </div>
       </div>
    </div>

 </div>

</div>



@endsection

