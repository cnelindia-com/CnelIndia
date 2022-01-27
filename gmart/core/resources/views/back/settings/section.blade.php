@extends('master.back')

@section('content')

<div class="container-fluid">

	<!-- Page Heading -->
    <div class="card mb-4">
        <div class="card-body">
            <div class="d-sm-flex align-items-center justify-content-between">
                <h3 class="mb-0 bc-title"><b>{{ __('Visibility') }}</b></h3>
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
						<div class="col-lg-9">
							<div class="p-5">
								<form class="admin-form" action="{{ route('back.setting.visible.update') }}" method="POST"
									enctype="multipart/form-data"> @csrf

									@include('alerts.alerts')

                                    <div class="container pl-0 pr-0 ml-0 mr-0 w-100 mw-100">
                                        <div id="tabs">

                                        <!-- Tab panes -->
                                        <div class="tab-content">

                                          <div id="facebook" class="container tab-pane active"><br>

                                            <div class="row justify-content-center">

                                                <div class="col-lg-8">

                                                    <div class="form-group">
                                                        <label class="switch-primary">
                                                          <input type="checkbox" class="switch switch-bootstrap " name="is_slider" value="1" {{ $setting->is_slider == 1 ? 'checked' : '' }}>
                                                          <span class="switch-body"></span>
                                                          <span class="switch-text">{{ __('Slider Section') }}</span>
                                                        </label>
                                                    </div>

                                                    <div class="form-group">
                                                      <label class="switch-primary">
                                                        <input type="checkbox" class="switch switch-bootstrap  " name="is_three_c_b_first" value="1" {{ $setting->is_three_c_b_first == 1 ? 'checked' : '' }}>
                                                        <span class="switch-body"></span>
                                                        <span class="switch-text">{{ __('3 column banner First') }}</span>
                                                      </label>
                                                    </div>


                                                    <div class="form-group">
                                                        <label class="switch-primary">
                                                          <input type="checkbox" class="switch switch-bootstrap  " name="is_popular_category" value="1" {{ $setting->is_popular_category == 1 ? 'checked' : '' }}>
                                                          <span class="switch-body"></span>
                                                          <span class="switch-text">{{ __('Popular Categories') }}</span>
                                                        </label>
                                                    </div>

                                                    <input type="hidden" name="is_section_track" value="1" id="">


                                                    <div class="form-group">
                                                      <label class="switch-primary">
                                                        <input type="checkbox" class="switch switch-bootstrap" name="is_three_c_b_second" value="1" {{ $setting->is_three_c_b_second == 1 ? 'checked' : '' }}>
                                                        <span class="switch-body"></span>
                                                        <span class="switch-text">{{ __('3 column banner Second') }}</span>
                                                      </label>
                                                  </div>

                                                    <div class="form-group">
                                                        <label class="switch-primary">
                                                          <input type="checkbox" class="switch switch-bootstrap" name="is_highlighted" value="1" {{ $setting->is_highlighted == 1 ? 'checked' : '' }}>
                                                          <span class="switch-body"></span>
                                                          <span class="switch-text">{{ __('Featured, Best Seller, Top Rated, New Product') }}</span>
                                                        </label>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="switch-primary">
                                                          <input type="checkbox" class="switch switch-bootstrap" name="is_two_column_category" value="1" {{ $setting->is_two_column_category == 1 ? 'checked' : '' }}>
                                                          <span class="switch-body"></span>
                                                          <span class="switch-text">{{ __('Two column category') }}</span>
                                                        </label>
                                                    </div>


                                                    <div class="form-group">
                                                        <label class="switch-primary">
                                                          <input type="checkbox" class="switch switch-bootstrap" name="is_popular_brand" value="1" {{ $setting->is_popular_brand == 1 ? 'checked' : '' }}>
                                                          <span class="switch-body"></span>
                                                          <span class="switch-text">{{ __('Popular Brands') }}</span>
                                                        </label>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="switch-primary">
                                                          <input type="checkbox" class="switch switch-bootstrap" name="is_featured_category" value="1" {{ $setting->is_featured_category == 1 ? 'checked' : '' }}>
                                                          <span class="switch-body"></span>
                                                          <span class="switch-text">{{ __('Featured Categories') }}</span>
                                                        </label>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="switch-primary">
                                                          <input type="checkbox" class="switch switch-bootstrap" name="is_two_c_b" value="1" {{ $setting->is_two_c_b == 1 ? 'checked' : '' }}>
                                                          <span class="switch-body"></span>
                                                          <span class="switch-text">{{ __('Two column banner') }}</span>
                                                        </label>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="switch-primary">
                                                          <input type="checkbox" class="switch switch-bootstrap" name="is_blogs" value="1" {{ $setting->is_blogs == 1 ? 'checked' : '' }}>
                                                          <span class="switch-body"></span>
                                                          <span class="switch-text">{{ __('blog Section') }}</span>
                                                        </label>
                                                    </div>

                                                    <div class="form-group">
                                                      <label class="switch-primary">
                                                        <input type="checkbox" class="switch switch-bootstrap  " name="is_service" value="1" {{ $setting->is_service == 1 ? 'checked' : '' }}>
                                                        <span class="switch-body"></span>
                                                        <span class="switch-text">{{ __('Service Section') }}</span>
                                                      </label>
                                                  </div>
                                                </div>

                                            </div>

                                          </div>

                                        </div>

                                    </div>

                                      </div>

									<div>

                                        <div class="form-group d-flex justify-content-center">
                                            <button type="submit" class="btn btn-secondary">{{ __('Submit') }}</button>
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

@endsection
