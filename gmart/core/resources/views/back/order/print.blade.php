<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link rel="icon"  type="image/x-icon" href="{{ asset('assets/images/'.$setting->favicon) }}"/>

  <title>{{ $setting->title }}</title>
<!-- Bootstrap -->
<link href="{{ asset('assets/front/css/bootstrap.min.css') }}" rel="stylesheet">

<link href="{{ asset('assets/front/css/fontawesome.min.css') }}" rel="stylesheet">
<link href="{{ asset('assets/front/css/magnific-popup.css') }}" rel="stylesheet">
<link href="{{ asset('assets/front/css/jquery-ui.css') }}" rel="stylesheet">

<link href="{{ asset('assets/front/css/animate.css') }}" rel="stylesheet">
<link href="{{ asset('assets/front/css/owl.carousel.min.css') }}" rel="stylesheet">

@yield('css')

<!-- Main css -->
<link href="{{ asset('assets/front/css/main.css') }}" rel="stylesheet">
</head>

<body id="invoice-print" onload="window.print()" id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">


    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">



    <div class="container-fluid my-5">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col text-center">

                              <!-- Logo -->
                              <img class="img-fluid mb-5 mh-70" width="180" alt="Logo" src="{{asset('assets/images/'.$setting->logo)}}">

                            </div>
                          </div> <!-- / .row -->
                          <div class="row">
                              <div class="col-12">
                                  <h5><b>{{__('Order Details :')}}</b></h5>

                                  <span class="text-muted">{{__('Order Id : ')}}</span>{{$order->transaction_number}}<br>
                                  <span class="text-muted">{{__('Order Date : ')}}</span>{{$order->created_at->format('M d, Y')}}<br>
                                  <span class="text-muted">{{__('Payment Status : ')}}</span>
                                  @if($order->payment_status == 'Paid')
                                  <div class="badge badge-success">
                                    {{__('Paid')}}
                                  </div>
                                  @else
                                  <div class="badge badge-danger">
                                      {{__('Unpaid')}}
                                    </div>
                                  @endif
                                  <br>
                                  <span class="text-muted">{{__('Payment Method : ')}}</span>{{$order->payment_method }}<br>

                                <br>
                                <br>
                                </div>
                          </div>
                          <div class="row">
                            <div class="col-12 col-md-6">
                                  <h5><b>{{__('Billing Address :')}}</b></h5>
                                          @php
                                              $bill = json_decode($order->billing_info,true);
                                          @endphp

                                      <span class="text-muted">{{__('Name')}}: </span>{{$bill['bill_first_name']}} {{$bill['bill_last_name']}}<br>
                                      <span class="text-muted">{{__('Email')}}: </span>{{$bill['bill_email']}}<br>
                                      <span class="text-muted">{{__('Phone')}}: </span>{{$bill['bill_phone']}}<br>
                                      <span class="text-muted">{{__('Address')}}: </span>{{$bill['bill_address1']}}, {{$bill['bill_address2']}}<br>
                                      <span class="text-muted">{{__('Country')}}: </span>{{$bill['bill_country']}}<br>
                                      <span class="text-muted">{{__('City')}}: </span>{{$bill['bill_city']}}<br>
                                      <span class="text-muted">{{__('Zip')}}: </span>{{$bill['bill_zip']}}<br>
                                      <span class="text-muted">{{__('Company')}}: </span>{{$bill['bill_company']}}

                            </div>
                            <div class="col-12 col-md-6">
                              <h5><b>{{__('Shipping Address :')}}</b></h5>
                                  @php
                                      $ship = json_decode($order->shipping_info,true)
                                  @endphp
                                      <span class="text-muted">{{__('Name')}}: </span>{{$ship['ship_first_name']}} {{$ship['ship_last_name']}} <br>
                                      <span class="text-muted">{{__('Email')}}: </span>{{$ship['ship_email']}}<br>
                                      <span class="text-muted">{{__('Phone')}}: </span>{{$ship['ship_phone']}}<br>
                                      <span class="text-muted">{{__('Address')}}: </span>{{$ship['ship_address1']}}, {{$ship['ship_address2']}}<br>
                                      <span class="text-muted">{{__('Country')}}: </span>{{$ship['ship_country']}}<br>
                                      <span class="text-muted">{{__('City')}}: </span>{{$ship['ship_city']}}<br>
                                      <span class="text-muted">{{__('Zip')}}: </span>{{$ship['ship_zip']}}<br>
                                      <span class="text-muted">{{__('Company')}}: </span>{{$ship['ship_company']}}
                            </div>
                          </div> <!-- / .row -->

                          <div class="row">
                            <div class="col-12">

                              <!-- Table -->
                              <div class="gd-responsive-table">
                                <table class="table my-4">
                                  <thead>
                                    <tr>
                                      <th width="50%" class="px-0 bg-transparent border-top-0">
                                        <span class="h6">{{__('Products')}}</span>
                                      </th>
                                      <th class="px-0 bg-transparent border-top-0">
                                        <span class="h6">{{__('Attribute')}}</span>
                                      </th>
                                      <th class="px-0 bg-transparent border-top-0">
                                        <span class="h6">{{__('Quantity')}}</span>
                                      </th>
                                      <th class="px-0 bg-transparent border-top-0 text-right">
                                        <span class="h6">{{__('Price')}}</span>
                                      </th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    @php
                                        $option_price = 0;
                                        $total = 0;
                                    @endphp
                                  @foreach (json_decode($order->cart,true) as $item)
                                  @php
                                      $total += $item['main_price'] * $item['qty'];
                                      $option_price += $item['attribute_price'];
                                      $grandSubtotal = $total + $option_price;
                                  @endphp
                                  <tr>
                                      <td class="px-0">
                                        {{$item['name']}}
                                      </td>
                                      <td class="px-0">
                                          @if($item['attribute']['option_name'])
                                          @foreach ($item['attribute']['option_name'] as $optionkey => $option_name)
                                          <span class="entry-meta"><b>{{$option_name}}</b> : {{$order->currency_sign}}{{round($item['attribute']['option_price'][$optionkey]*$order->currency_value,2)}}</span>
                                          @endforeach
                                          @else
                                          --
                                          @endif
                                      </td>
                                      <td class="px-0">
                                        {{$item['qty']}}
                                      </td>

                                      <td class="px-0 text-right">
                                      {{$order->currency_sign}}{{round($item['main_price']*$order->currency_value,2)}}
                                      </td>
                                    </tr>
                                  @endforeach
                                     <tr>
                                      <td class="padding-top-2x" colspan="5">
                                      </td>
                                    </tr>
                                    @if($order->tax!=0)
                                    <tr>
                                      <td class="px-0 border-top border-top-2">
                                      <span class="text-muted">{{__('Tax')}}</span>
                                      </td>
                                      <td class="px-0 text-right border-top border-top-2" colspan="5">
                                        <span>
                                          {{$order->currency_sign}}{{$order->tax}}
                                        </span>
                                      </td>
                                    </tr>
                                    @endif
                                    @if(json_decode($order->discount,true))
                                    @php
                                        $discount = json_decode($order->discount,true);
                                    @endphp
                                     <tr>
                                      <td class="px-0 border-top border-top-2">
                                       <span class="text-muted">{{__('Coupon discount')}} ({{$discount['code']['code_name']}})</span>
                                      </td>
                                      <td class="px-0 text-right border-top border-top-2" colspan="5">
                                        <span class="text-danger">
                                          -{{$order->currency_sign}}{{round($discount['discount'] * $order->currency_value,2)}}
                                        </span>
                                      </td>
                                    </tr>
                                    @endif
                                    @if(json_decode($order->shipping,true))
                                    @php
                                        $shipping = json_decode($order->shipping,true);
                                    @endphp
                                     <tr>
                                      <td class="px-0 border-top border-top-2">
                                       <span class="text-muted">{{__('Shipping')}}</span>
                                      </td>
                                      <td class="px-0 text-right border-top border-top-2" colspan="5">
                                        <span >
                                          {{$order->currency_sign}}{{round($shipping['price']*$order->currency_value,2)}}
                                        </span>
                                      </td>
                                    </tr>
                                    @endif
                                    <tr>
                                      <td class="px-0 border-top border-top-2">

                                       @if ($order->payment_method == 'Cash On Delivery')
                                       <strong>{{__('Total amount')}}</strong>
                                       @else
                                       <strong>{{__('Total amount due')}}</strong>
                                       @endif
                                      </td>
                                      <td class="px-0 text-right border-top border-top-2" colspan="5">
                                        <span class="h3">
                                          {{$order->currency_sign}}{{PriceHelper::OrderTotal($order)}}
                                        </span>
                                      </td>
                                    </tr>
                                  </tbody>
                                </table>
                              </div>
                            </div>
                          </div> <!-- / .row -->
                    </div>
                </div>
            </div>
        </div>
    </div>



      </div>
      <!-- End of Main Content -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

</body>

</html>

