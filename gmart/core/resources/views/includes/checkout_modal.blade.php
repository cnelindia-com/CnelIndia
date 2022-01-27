     <!-- Modal Cash on Transfer-->
     <div class="modal fade" id="cod" tabindex="-1"  aria-hidden="true">
        <div class="modal-dialog" >
          <div class="modal-content">
            <div class="modal-header">
              <h6 class="modal-title">{{__('Transaction Cash On Delivery')}}</h6>
              <button class="close" type="button" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <form action="{{route('front.checkout.submit')}}" method="POST">
              @csrf
              <input type="hidden" name="payment_method" value="Cash On Delivery" id="">
              <div class="card-body">
                <p>{{PriceHelper::GatewayText('cod')}}</p>
              </div>
            <div class="modal-footer">
              <button class="btn btn-outline-secondary btn-sm" type="button" data-bs-dismiss="modal">{{ __('Cancel') }}</button>
              <button class="btn btn-primary btn-sm" type="submit">{{__('Cash On Delivery')}}</button>
            </form>
            </div>
          </div>
        </div>
      </div>
        <!-- Modal MOLLIE -->
      <div class="modal fade" id="mollie" tabindex="-1"  aria-hidden="true">
        <div class="modal-dialog" >
          <div class="modal-content">
            <div class="modal-header">
              <h6 class="modal-title">{{ __('Transactions via Mollie') }}</h6>
              <button class="close" type="button" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
              <p>{{PriceHelper::GatewayText('mollie')}}</p>
            </div>
            <div class="modal-footer">
              <form action="{{route('front.checkout.submit')}}" method="POST">
                @csrf
                <input type="hidden" name="payment_method" value="Mollie">
              <button class="btn btn-outline-secondary btn-sm" type="button" data-bs-dismiss="modal">{{ __('Cancel') }}</button>
              <button class="btn btn-primary btn-sm" type="submit">{{ __('Checkout With Mollie') }}</button>
            </form>
            </div>
          </div>
        </div>
      </div>
          <!-- Modal PayPal -->
      <div class="modal fade" id="paypal" tabindex="-1"  aria-hidden="true">
        <form class="interactive-credit-card row" action="{{route('front.checkout.submit')}}" method="POST">
            @csrf
        <div class="modal-dialog" >

          <div class="modal-content">
            <div class="modal-header">
              <h6 class="modal-title">{{__('Transactions via PayPal')}}</h6>
              <button class="close" type="button" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
              <div class="card-body">
                <p>{{PriceHelper::GatewayText('paypal')}}</p>
                </div>
            </div>
            <input type="hidden" name="payment_method" value="Paypal">
            <div class="modal-footer">
              <button class="btn btn-outline-secondary btn-sm" type="button" data-bs-dismiss="modal">{{__('Cancel')}}</button>
              <button class="btn btn-primary btn-sm" type="submit">{{__('Checkout With PayPal')}}</button>
            </div>
          </div>

        </div>
    </form>
      </div>

        <!-- Modal Stripe -->
      <div class="modal fade" id="stripe" tabindex="-1"  aria-hidden="true">
        <div class="modal-dialog" >
          <div class="modal-content">
            <div class="modal-header">
              <h6 class="modal-title">{{__('Transactions via Stripe')}}</h6>
              <button class="close" type="button" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
              <div class="card-body">
                    <div class="card-wrapper"></div>
                    <form class="interactive-credit-card row" action="{{route('front.checkout.submit')}}" method="POST">
                      @csrf
                      <div class="form-group col-sm-12">
                        <input class="form-control" type="text" name="card" placeholder="{{ __('Card Number') }}" required>
                      </div>
                   <input type="hidden" name="payment_method" value="Stripe">
                      <div class="form-group col-sm-6">
                        <input class="form-control" type="text" name="month" placeholder="{{__('Expitation Month')}}" required>
                      </div>
                      <div class="form-group col-sm-6">
                        <input class="form-control" type="text" name="year" placeholder="{{__('Expitation Year')}}" required>

                      </div>
                      <div class="form-group col-sm-12">
                        <input class="form-control" type="text" name="cvc" placeholder="{{ __('CVV') }}" required>
                      </div>

                      <p class="p-3">{{PriceHelper::GatewayText('stripe')}}</p>
                  </div>
            </div>
            <div class="modal-footer">
              <button class="btn btn-outline-secondary btn-sm" type="button" data-bs-dismiss="modal">{{__('Cancel')}}</button>
              <button class="btn btn-primary btn-sm" type="submit">{{__('Chekout With Stripe')}}</button>
            </div>
          </form>
          </div>
        </div>
      </div>

      {{-- PAYPAL --}}
      <div class="modal fade" id="paypal" tabindex="-1"  aria-hidden="true">
        <div class="modal-dialog" >
          <form class="interactive-credit-card row" action="{{route('front.checkout.submit')}}" method="POST">
            @csrf
          <div class="modal-content">
            <div class="modal-header">
              <h6 class="modal-title">{{__('Transactions via PayPal')}}</h6>
              <button class="close" type="button" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
              <div class="card-body">
                <p>{{PriceHelper::GatewayText('paypal')}}</p>
                </div>
            </div>
            <input type="hidden" name="payment_method" value="Paypal">
            <div class="modal-footer">
              <button class="btn btn-outline-secondary btn-sm" type="button" data-bs-dismiss="modal">{{__('Cancel')}}</button>
              <button class="btn btn-primary btn-sm" type="submit">{{__('Checkout With PayPal')}}</button>
            </div>
          </div>
          </form>
        </div>
      </div>

      {{-- PAYTM --}}
      <div class="modal fade" id="paytm" tabindex="-1"  aria-hidden="true">
        <form class="interactive-credit-card row" action="{{route('front.paytm.submit')}}" method="POST">
            @csrf
        <div class="modal-dialog" >
          <div class="modal-content">
            <div class="modal-header">
              <h6 class="modal-title">{{__('Transactions via Paytm')}}</h6>
              <button class="close" type="button" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
              <div class="card-body">
                <p>{{PriceHelper::GatewayText('paytm')}}</p>
                </div>
            </div>
            <input type="hidden" name="payment_method" value="Paytm">
            <div class="modal-footer">
              <button class="btn btn-outline-secondary btn-sm" type="button" data-bs-dismiss="modal">{{__('Cancel')}}</button>
              <button class="btn btn-primary btn-sm" type="submit">{{__('Checkout With Paytm')}}</button>
            </div>
          </div>
        </div>
    </form>
      </div>

      {{-- SSL COMMERZ --}}
      <div class="modal fade" id="sslcommerz" tabindex="-1"  aria-hidden="true">
        <form class="interactive-credit-card row" action="{{route('front.sslcommerz.submit')}}" method="POST">
            @csrf
        <div class="modal-dialog" >
          <div class="modal-content">
            <div class="modal-header">
              <h6 class="modal-title">{{__('Transactions via SSLCommerz')}}</h6>
              <button class="close" type="button" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
              <div class="card-body">
                <p>{{PriceHelper::GatewayText('sslcommerz')}}</p>
                </div>
            </div>
            <input type="hidden" name="payment_method" value="SSLCommerz">
            <div class="modal-footer">
              <button class="btn btn-outline-secondary btn-sm" type="button" data-bs-dismiss="modal">{{__('Cancel')}}</button>
              <button class="btn btn-primary btn-sm" type="submit">{{__('Checkout With SSLCommerz')}}</button>
            </div>
          </div>

        </div>
    </form>
      </div>
