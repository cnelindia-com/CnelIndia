@extends('master.back')

@section('content')

<div class="container-fluid">

	<!-- Page Heading -->
    <div class="card mb-4">
        <div class="card-body">
            <div class="d-sm-flex align-items-center justify-content-between">
                <h3 class=" mb-0"><b>{{ __('Payment') }}</b></h3>
                </div>
        </div>
    </div>

	<!-- Form -->
	<div class="row">

		<div class="col-xl-12 col-lg-12 col-md-12">

			<div class="card o-hidden border-0 shadow-lg">
				<div class="card-body ">
					<!-- Nested Row within Card Body -->
					<div class="row">
                        <div class="col-lg-3">
                            <div class="nav flex-column m-3 nav-pills nav-secondary" id="v-pills-tab" role="tablist" aria-orientation="vertical">

                                    <a class="nav-link active" data-toggle="pill" href="#cod">{{ __('Cash On Delivery') }}</a>
                                    <a class="nav-link" data-toggle="pill" href="#stripe">{{ __('Stripe') }}</a>
                                    <a class="nav-link" data-toggle="pill" href="#paypal">{{ __('Paypal') }}</a>
                                    <a class="nav-link" data-toggle="pill" href="#molly">{{ __('Mollie') }}</a>
                                    <a class="nav-link" data-toggle="pill" href="#paytm">{{ __('Paytm') }}</a>
                                    <a class="nav-link" data-toggle="pill" href="#sslcommerz">{{ __('SSL commerz') }}</a>

                            </div>
                        </div>
						<div class="col-lg-9">
							<div class="p-5">
								<div class="admin-form">

									@include('alerts.alerts')

                                    <div class="container pl-0 pr-0 ml-0 mr-0 w-100 mw-100">
                                        <div id="tabs">


                                        <!-- Tab panes -->
                                        <div class="tab-content">
                                          <div id="cod" class="container tab-pane active"><br>

                                            <div class="row justify-content-center">

                                                <div class="col-lg-8">

                                                    <form action="{{ route('back.setting.payment.update') }}" method="POST"
                                                    enctype="multipart/form-data">

                                                    @csrf

                                                        <div class="form-check col-xl-12 mb-4">
                                                            <input type="checkbox" name="status" data-toggle="toggle" data-onstyle="primary" data-style="btn-round" class="form-check-input image-check" value="1" id="cod_status" {{ $cod->status == 1 ? 'checked' : '' }}>
                                                            <label class="form-check-label" for="cod_status">{{ __('Display Cash On Delivery') }}</label>
                                                        </div>

                                                        <div class="image-show {{ $cod->status == 1 ? '' : 'd-none' }}">

                                                            <div class="form-group">
                                                                <label for="name">{{ __('Current Image') }}</label>
                                                                <div class="col-lg-12 pb-1">
                                                                    <img class="admin-setting-img"
                                                                        src="{{ $cod->photo ? asset('assets/images/'.$cod->photo) : asset('assets/images/placeholder.png') }}"
                                                                        alt="No Image Found">
                                                                </div>
                                                                <span>{{ __('Image Size Should Be 52 x 35.') }}</span>
                                                            </div>

                                                            <div class="form-group position-relative col-xl-12">
                                                                <label class="file">
                                                                    <input type="file"  accept="image/*"  class="upload-photo" name="photo" id="file" aria-label="File browser example">
                                                                    <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                                                </label>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="text">{{ __('Enter Text') }} *</label>
                                                                <textarea name="text" id="text" class="form-control " rows="5"
                                                                    placeholder="{{ __('Enter Text') }}"
                                                                    >{{ $cod->text }}</textarea>
                                                            </div>

                                                            <input type="hidden" name="unique_keyword" value="cod">

                                                        </div>

                                                        <div>

                                                            <div class="form-group d-flex justify-content-center">
                                                                <button type="submit" class="btn btn-secondary ">{{ __('Submit') }}</button>
                                                            </div>

                                                        </div>

                                                    </form>

                                                </div>

                                            </div>

                                          </div>

                                          <div id="stripe" class="container tab-pane"><br>

                                            <div class="row justify-content-center">

                                                <div class="col-lg-8">

                                                    <form action="{{ route('back.setting.payment.update') }}" method="POST"
                                                    enctype="multipart/form-data">

                                                    @csrf


                                                    <div class="form-check col-xl-12 mb-4">
                                                        <input type="checkbox" name="status" data-toggle="toggle" data-onstyle="primary" data-style="btn-round" class="form-check-input image-check" value="1" id="stripe_status" {{ $stripe->status == 1 ? 'checked' : '' }}>
                                                        <label class="form-check-label" for="stripe_status">{{ __('Display Stripe') }}</label>
                                                    </div>

                                                    <div class="image-show {{ $stripe->status == 1 ? '' : 'd-none' }}">

                                                        <div class="form-group">
                                                            <label for="name">{{ __('Current Image') }}</label>
                                                            <div class="col-lg-12 pb-1">
                                                                <img class="admin-setting-img"
                                                                    src="{{ $stripe->photo ? asset('assets/images/'.$stripe->photo) : asset('assets/images/placeholder.png') }}"
                                                                    stripe="No Image Found">
                                                            </div>
                                                            <span>{{ __('Image Size Should Be 52 x 35.') }}</span>
                                                        </div>

                                                        <div class="form-group position-relative col-xl-12">
                                                            <label class="file">
                                                                <input type="file"  accept="image/*"  class="upload-photo" name="photo" id="file" aria-label="File browser example">
                                                                <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                                            </label>
                                                        </div>

                                                        @foreach($stripeData as $pkey => $pdata)

                                                            <div class="form-group">
                                                                <label for="inp-{{ __($pkey) }}">{{ __( $stripe->name.' '.ucwords(str_replace('_',' ',$pkey)) ) }}</label>
                                                                <input type="text" class="form-control" id="inp-{{ __($pkey) }}" name="pkey[{{ __($pkey) }}]"  placeholder="{{ __( $stripe->name.' '.ucwords(str_replace('_',' ',$pkey)) ) }}" value="{{ $pdata }}" >
                                                            </div>


                                                        @endforeach

                                                        <div class="form-group">
                                                            <label for="text">{{ __('Enter Text') }} *</label>
                                                            <textarea name="text" id="text" class="form-control " rows="5"
                                                                placeholder="{{ __('Enter Text') }}"
                                                                >{{ $stripe->text }}</textarea>
                                                        </div>

                                                        <input type="hidden" name="unique_keyword" value="stripe">

                                                    </div>

                                                        <div>

                                                            <div class="form-group d-flex justify-content-center">
                                                                <button type="submit" class="btn btn-secondary ">{{ __('Submit') }}</button>
                                                            </div>

                                                        </div>

                                                    </form>

                                                </div>

                                            </div>

                                          </div>


                                          <div id="paypal" class="container tab-pane"><br>

                                            <div class="row justify-content-center">

                                                <div class="col-lg-8">

                                                    <form action="{{ route('back.setting.payment.update') }}" method="POST"
                                                    enctype="multipart/form-data">

                                                    @csrf

                                                    <div class="form-check col-xl-12 mb-4">
                                                        <input type="checkbox" name="status" data-toggle="toggle" data-onstyle="primary" data-style="btn-round" class="form-check-input image-check" value="1" id="paypal_status" {{ $paypal->status == 1 ? 'checked' : '' }}>
                                                        <label class="form-check-label" for="paypal_status">{{ __('Display Paypal') }}</label>
                                                    </div>

                                                    <div class="image-show {{ $paypal->status == 1 ? '' : 'd-none' }}">

                                                        <div class="form-group">
                                                            <label for="name">{{ __('Current Image') }}</label>
                                                            <div class="col-lg-12 pb-1">
                                                                <img class="admin-setting-img"
                                                                    src="{{ $paypal->photo ? asset('assets/images/'.$paypal->photo) : asset('assets/images/placeholder.png') }}"
                                                                    alt="No Image Found">
                                                            </div>
                                                            <span>{{ __('Image Size Should Be 52 x 35.') }}</span>
                                                        </div>

                                                        <div class="form-group position-relative col-xl-12">
                                                            <label class="file">
                                                                <input type="file"  accept="image/*"  class="upload-photo" name="photo" id="file" aria-label="File browser example">
                                                                <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                                            </label>
                                                        </div>

                                                        @foreach($paypalData as $pkey => $pdata)

                                                            @if($pkey == 'check_sandbox')

                                                                <div class="form-group  col-xl-4 col-md-6">
                                                                    <div class="custom-control custom-checkbox">
                                                                        <input type="checkbox" name="pkey[{{ __($pkey) }}]" class="custom-control-input" {{ $pdata == 1  ? 'checked' : '' }} id="{{ $pkey }}">
                                                                        <label class="custom-control-label" for="{{ $pkey }}">
                                                                        {{ __( $paypal->name.' '.ucwords(str_replace('_',' ',$pkey)) ) }}
                                                                        </label>
                                                                    </div>
                                                                </div>

                                                            @else

                                                                <div class="form-group">
                                                                    <label for="inp-{{ __($pkey) }}">{{ __( $paypal->name.' '.ucwords(str_replace('_',' ',$pkey)) ) }}</label>
                                                                    <input type="text" class="form-control" id="inp-{{ __($pkey) }}" name="pkey[{{ __($pkey) }}]"  placeholder="{{ __( $paypal->name.' '.ucwords(str_replace('_',' ',$pkey)) ) }}" value="{{ $pdata }}" >
                                                                </div>

                                                            @endif

                                                        @endforeach

                                                        <div class="form-group">
                                                            <label for="text">{{ __('Enter Text') }} *</label>
                                                            <textarea name="text" id="text" class="form-control " rows="5"
                                                                placeholder="{{ __('Enter Text') }}"
                                                                >{{ $paypal->text }}</textarea>
                                                        </div>

                                                        <input type="hidden" name="unique_keyword" value="paypal">

                                                    </div>

                                                        <div>

                                                            <div class="form-group d-flex justify-content-center">
                                                                <button type="submit" class="btn btn-secondary ">{{ __('Submit') }}</button>
                                                            </div>

                                                        </div>

                                                    </form>

                                                </div>

                                            </div>

                                          </div>
                                          <div id="molly" class="container tab-pane"><br>

                                            <div class="row justify-content-center">

                                                <div class="col-lg-8">

                                                    <form action="{{ route('back.setting.payment.update') }}" method="POST"
                                                    enctype="multipart/form-data">

                                                    @csrf

                                                    <div class="form-check col-xl-12 mb-4">
                                                        <input type="checkbox" data-toggle="toggle" data-onstyle="primary" data-style="btn-round"  name="status" class="form-check-input" value="1" id="molly_status" {{ $molly->status == 1 ? 'checked' : '' }}>
                                                        <label class="form-check-label" for="molly_status">{{ __('Display Mollie') }}</label>
                                                    </div>

                                                    <div class="image-show {{ $molly->status == 1 ? '' : 'd-none' }}">

                                                        <div class="form-group">
                                                            <label for="name">{{ __('Current Image') }}</label>
                                                            <div class="col-lg-12 pb-1">
                                                                <img class="admin-setting-img"
                                                                    src="{{ $molly->photo ? asset('assets/images/'.$molly->photo) : asset('assets/images/placeholder.png') }}"
                                                                    alt="No Image Found">
                                                            </div>
                                                            <span>{{ __('Image Size Should Be 52 x 35.') }}</span>
                                                        </div>

                                                        <div class="form-group position-relative col-xl-12">
                                                            <label class="file">
                                                                <input type="file"  accept="image/*"  class="upload-photo" name="photo" id="file" aria-label="File browser example">
                                                                <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                                            </label>
                                                        </div>

                                                        @foreach($mollyData as $pkey => $pdata)

                                                        <div class="form-group">
                                                            <label for="inp-{{ __($pkey) }}">{{ __( $molly->name.' '.ucwords(str_replace('_',' ',$pkey)) ) }}</label>
                                                            <input type="text" class="form-control" id="inp-{{ __($pkey) }}" name="pkey[{{ __($pkey) }}]"  placeholder="{{ __( $molly->name.' '.ucwords(str_replace('_',' ',$pkey)) ) }}" value="{{ $pdata }}" >
                                                        </div>


                                                    @endforeach

                                                        <input type="hidden" name="unique_keyword" value="molly">

                                                        <div class="form-group">
                                                            <label for="text">{{ __('Enter Text') }} *</label>
                                                            <textarea name="text" id="text" class="form-control " rows="5"
                                                                placeholder="{{ __('Enter Text') }}"
                                                                >{{ $molly->text }}</textarea>
                                                        </div>

                                                    </div>

                                                        <div>

                                                            <div class="form-group d-flex justify-content-center">
                                                                <button type="submit" class="btn btn-secondary ">{{ __('Submit') }}</button>
                                                            </div>

                                                        </div>

                                                    </form>

                                                </div>

                                            </div>

                                          </div>

                                          <div id="paytm" class="container tab-pane"><br>

                                            <div class="row justify-content-center">

                                                <div class="col-lg-8">

                                                    <form action="{{ route('back.setting.payment.update') }}" method="POST"
                                                    enctype="multipart/form-data">

                                                    @csrf

                                                    <div class="form-check col-xl-12 mb-4">
                                                        <input type="checkbox" data-toggle="toggle" data-onstyle="primary" data-style="btn-round" name="status" class="form-check-input image-check" value="1" id="paytm_status" {{ $paytm->status == 1 ? 'checked' : '' }}>
                                                        <label class="form-check-label" for="paytm_status">{{ __('Display Paytm') }}</label>
                                                    </div>

                                                    <div class="image-show {{ $paytm->status == 1 ? '' : 'd-none' }}">

                                                        <div class="form-group col-xl-12">
                                                            <label for="name">{{ __('Current Image') }}</label>
                                                            <div class="col-lg-12 pb-1">
                                                                <img class="admin-setting-img"
                                                                    src="{{ $paytm->photo ? asset('assets/images/'.$paytm->photo) : asset('assets/images/placeholder.png') }}"
                                                                    stripe="No Image Found">
                                                            </div>
                                                            <span>{{ __('Image Size Should Be 52 x 35.') }}</span>
                                                        </div>

                                                        <div class="form-group position-relative col-xl-12">
                                                            <label class="file">
                                                                <input type="file" class="upload-photo" name="photo" id="file" aria-label="File browser example">
                                                                <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                                            </label>
                                                        </div>

                                                        @foreach($paytmData as $pkey => $paytmData)

                                                            <div class="form-group col-xl-12">
                                                                <label for="inp-{{ __($pkey) }}">{{ __( $paytm->name.' '.ucwords(str_replace('_',' ',$pkey)) ) }}</label>
                                                                <input type="text" class="form-control" id="inp-{{ __($pkey) }}" name="pkey[{{ __($pkey) }}]"  placeholder="{{ __( $paytm->name.' '.ucwords(str_replace('_',' ',$pkey)) ) }}" value="{{ $paytmData }}" required>
                                                            </div>


                                                        @endforeach

                                                        <div class="form-group">
                                                            <label for="text">{{ __('Enter Text') }} *</label>
                                                            <textarea name="text" id="text" class="form-control " rows="5"
                                                                placeholder="{{ __('Enter Text') }}"
                                                                >{{ $paytm->text }}</textarea>
                                                        </div>

                                                        <input type="hidden" name="unique_keyword" value="paytm">

                                                    </div>

                                                        <div>

                                                            <div class="form-group d-flex justify-content-center">
                                                                <button type="submit" class="btn btn-secondary btn-block w-50">{{ __('Submit') }}</button>
                                                            </div>

                                                        </div>

                                                    </form>

                                                </div>

                                            </div>

                                          </div>


                                          <div id="sslcommerz" class="container tab-pane"><br>

                                            <div class="row justify-content-center">

                                                <div class="col-lg-8">

                                                    <form action="{{ route('back.setting.payment.update') }}" method="POST"
                                                    enctype="multipart/form-data">

                                                    @csrf

                                                    <div class="form-check col-xl-12 mb-4">
                                                        <input type="checkbox" data-toggle="toggle" data-onstyle="primary" data-style="btn-round" name="status" class="form-check-input image-check" value="1" id="paytm_status" {{ $paytm->status == 1 ? 'checked' : '' }}>
                                                        <label class="form-check-label" for="paytm_status">{{ __('Display sslcommerz') }}</label>
                                                    </div>

                                                    <div class="image-show {{ $sslcommerz->status == 1 ? '' : 'd-none' }}">

                                                        <div class="form-group col-xl-12">
                                                            <label for="name">{{ __('Current Image') }}</label>
                                                            <div class="col-lg-12 pb-1">
                                                                <img class="admin-setting-img"
                                                                    src="{{ $sslcommerz->photo ? asset('assets/images/'.$sslcommerz->photo) : asset('assets/images/placeholder.png') }}"
                                                                    stripe="No Image Found">
                                                            </div>
                                                            <span>{{ __('Image Size Should Be 52 x 35.') }}</span>
                                                        </div>

                                                        <div class="form-group position-relative col-xl-12">
                                                            <label class="file">
                                                                <input type="file" class="upload-photo" name="photo" id="file" aria-label="File browser example">
                                                                <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                                            </label>
                                                        </div>

                                                        @foreach($sslcommerzData as $pkey => $sslcommerzData)

                                                            <div class="form-group col-xl-12">
                                                                <label for="inp-{{ __($pkey) }}">{{ __( $sslcommerz->name.' '.ucwords(str_replace('_',' ',$pkey)) ) }}</label>
                                                                <input type="text" class="form-control" id="inp-{{ __($pkey) }}" name="pkey[{{ __($pkey) }}]"  placeholder="{{ __( $sslcommerz->name.' '.ucwords(str_replace('_',' ',$pkey)) ) }}" value="{{ $sslcommerzData }}" required>
                                                            </div>


                                                        @endforeach

                                                        <div class="form-group">
                                                            <label for="text">{{ __('Enter Text') }} *</label>
                                                            <textarea name="text" id="text" class="form-control " rows="5"
                                                                placeholder="{{ __('Enter Text') }}"
                                                                >{{ $sslcommerz->text }}</textarea>
                                                        </div>

                                                        <input type="hidden" name="unique_keyword" value="sslcommerz">

                                                    </div>

                                                        <div>

                                                            <div class="form-group d-flex justify-content-center">
                                                                <button type="submit" class="btn btn-secondary btn-block w-50">{{ __('Submit') }}</button>
                                                            </div>

                                                        </div>

                                                    </form>

                                                </div>

                                            </div>

                                          </div>


                                        </div>
                                    </div>
                                </div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

</div>

@endsection
