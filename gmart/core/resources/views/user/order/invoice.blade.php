@extends('master.front')
@section('title')
    {{__('Invoice')}}
@endsection
@section('content')

<!-- Page Title-->
<div class="page-title">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <ul class="breadcrumbs">
                    <li><a href="{{route('user.order.index')}}">{{__('Orders')}}</a> </li>
                    <li class="separator"></li>
                    <li>{{__('Order Invoice')}}</li>
                  </ul>
            </div>
        </div>
    </div>
  </div>

        <!-- Page Content-->
  <div class="container padding-bottom-3x mb-1 print_invoice">
    <div class="card card-body p-5">
                <div class="row">
                    <div class="col-lg-12">
                        <a href="{{route('user.order.index')}}" class="btn btn-sm btn-primary d-inline-block">{{__('Back')}}</a>
                        <a href="{{route('user.order.print',$order->id)}}" target="_blank" class="btn btn-sm btn-primary invoice_price d-inline-block">{{__('Print')}}</a>
                    </div>
                </div> <!-- / .row -->
                <div class="row">
                  <div class="col text-center">

                    <!-- Logo -->
                    <img class="img-fluid mb-5 mh-70"  alt="Logo" src="{{asset('assets/images/'.$setting->logo)}}">

                  </div>
                </div> <!-- / .row -->
                <div class="row">
                    <div class="col-12">
                        <h5>{{__('Order Details :')}}</h5>

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
                        <h5>{{__('Billing Address :')}}</h5>
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
                    <h5>{{__('Shipping Address :')}}</h5>
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
                    <div class="table-responsive">
                      <table class="table table-bordered my-4">
                        <thead>
                          <tr>
                            <th width="50%" class=" bg-transparent border-top-0">
                              <span class="h6">{{__('Products')}}</span>
                            </th>
                            <th class=" bg-transparent border-top-0">
                              <span class="h6">{{__('Attribute')}}</span>
                            </th>
                            <th class=" bg-transparent border-top-0">
                              <span class="h6">{{__('Quantity')}}</span>
                            </th>
                            <th class=" bg-transparent border-top-0 text-right">
                              <span class="h6">{{__('Price')}}</span>
                            </th>
                          </tr>
                        </thead>
                        <tbody>
                          @php
                              $option_price = 0;
                              $total = 0;
                          @endphp
                        @foreach (json_decode($order->cart,true) as $key  => $item)
                        @php
                            $total += $item['main_price'] * $item['qty'];
                            $option_price += $item['attribute_price'];
                            $grandSubtotal = $total + $option_price;
                            if(App\Models\Item::where('id',$key)->exists()){
                              $main_item = App\Models\Item::findOrFail($key);
                            }else{
                              $main_item = null;
                            }
                        @endphp
                        <tr>
                            <td class="">
                              {{$item['name']}}
                              <p>
                                @if($main_item)
                                @if ($item['item_type'] == 'digital')
                                    @if ($order->payment_status == 'Paid')
                                      @if ($main_item['file_type'] == 'link')
                                      <a href="{{$main_item->link}}" target="_blank" class="btn btn-sm btn-success">{{__('Click Here')}}</a>
                                      @else
                                      <a href="{{asset('assets/files/'.$main_item->file)}}" class="btn btn-sm btn-success">{{__('Download')}}</a>
                                      @endif
                                    @endif
                                @endif
                              @endif
                              </p>
                            </td>
                            <td class="">
                                @if($item['attribute']['option_name'])
                                @foreach ($item['attribute']['option_name'] as $optionkey => $option_name)
                                <span class="entry-meta"><b>{{$option_name}}</b> : {{$order->currency_sign}}{{round($item['attribute']['option_price'][$optionkey]*$order->currency_value,2)}}</span>
                                @endforeach
                                @else
                                --
                                @endif
                            </td>
                            <td class="">
                              {{$item['qty']}}
                            </td>

                            <td class=" text-right">
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
                            <td class=" border-top border-top-2">
                            <span class="text-muted">{{__('Tax')}}</span>
                            </td>
                            <td class=" text-right border-top border-top-2" colspan="5">
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
                            <td class=" border-top border-top-2">
                             <span class="text-muted">{{__('Coupon discount')}} ({{$discount['code']['code_name']}})</span>
                            </td>
                            <td class=" text-right border-top border-top-2" colspan="5">
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
                            <td class=" border-top border-top-2">
                             <span class="text-muted">{{__('Shipping')}}</span>
                            </td>
                            <td class=" text-right border-top border-top-2" colspan="5">
                              <span >
                                {{$order->currency_sign}}{{round($shipping['price']*$order->currency_value,2)}}
                              </span>
                            </td>
                          </tr>
                          @endif
                          <tr>
                            <td class=" border-top border-top-2">

                             @if ($order->payment_status != 'Paid')
                             <strong>{{__('Total amount due')}}</strong>
                             @else
                             <strong>{{__('Total amount')}}</strong>
                             @endif
                            </td>
                            <td class=" text-right border-top border-top-2" colspan="5">
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

@endsection
