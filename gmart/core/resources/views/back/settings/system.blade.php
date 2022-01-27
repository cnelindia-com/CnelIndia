@extends('master.back')

@section('content')

<div class="container-fluid">

	<!-- Page Heading -->
    <div class="card mb-4">
        <div class="card-body">
            <div class="d-sm-flex align-items-center justify-content-between">
                <h3 class="mb-0 bc-title"><b>{{ __('Basic Information') }}</b></h3>

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
                                    <a class="nav-link active" data-toggle="pill" href="#basic">{{ __('Basic') }}</a>
                                    <a class="nav-link" data-toggle="pill" href="#media">{{ __('Media') }}</a>
                                    <a class="nav-link" data-toggle="pill" href="#seo">{{ __('Seo') }}</a>
                                    <a class="nav-link" data-toggle="pill" href="#links">{{ __('Menu') }}</a>
                                    <a class="nav-link" data-toggle="pill" href="#footer">{{ __('Footer & Contact Page') }}</a>

                            </div>
                        </div>
						<div class="col-lg-9">
							<div class="p-5">
								<form class="admin-form" action="{{ route('back.setting.update') }}" method="POST"
									enctype="multipart/form-data">

                                    @csrf

									@include('alerts.alerts')

                                    <input type="hidden" name="is_validate" value="1">

                                    <div class="container pl-0 pr-0 ml-0 mr-0 w-100 mw-100">
                                        <div id="tabs">
                                        <!-- Tab panes -->
                                        <div class="tab-content">
                                          <div id="basic" class="container tab-pane active"><br>


                                            <div class="row justify-content-center">

                                                <div class="col-lg-8">
                                                    <div class="form-group">
                                                        <label for="title">{{ __('Title') }} *</label>
                                                        <input type="text" name="title" class="form-control" id="title"
                                                            placeholder="{{ __('Enter Website Title') }}" value="{{ $setting->title }}" >
                                                    </div>
                                                </div>

                                                <div class="col-lg-8">

                                                    <div class="form-group">
                                                        <label for="primary_color">{{ __('Primary Colour Code') }} *</label>
                                                        <input type="text" data-jscolor="" name="primary_color" class="form-control" id="primary_color"
                                                            placeholder="{{ __('Enter Website Primary Colour Code') }}" value="{{ $setting->primary_color }}" >
                                                    </div>

                                                </div>

                                            </div>

                                          </div>

                                          <div id="media" class="container tab-pane"><br>

                                            <div class="row justify-content-center">

                                                <div class="col-lg-8">

                                                    <ul class="nav nav-pills nav-justified nav-secondary nav-pills-no-bd">
                                                        <li class="nav-item">
                                                            <a class="nav-link active" data-toggle="pill" href="#logo">{{ __('Logo') }}</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link" data-toggle="pill" href="#favicon">{{ __('Favicon') }}</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link" data-toggle="pill" href="#loader">{{ __('Loader') }}</a>
                                                        </li>
                                                    </ul>

                                                    <div class="tab-content">

                                                        <div id="logo" class="container tab-pane active"><br>
                                                          <div class="row justify-content-center">

                                                            <div class="col-lg-12">

                                                                <div class="form-group">
                                                                    <label for="name">{{ __('Current Image') }}</label>
                                                                    <div class="col-lg-12 pb-1">
                                                                        <img class="admin-setting-img"
                                                                            src="{{ $setting->logo ? asset('assets/images/'.$setting->logo) : asset('assets/images/placeholder.png') }}"
                                                                            alt="No Image Found">
                                                                    </div>
                                                                    <span>{{ __('Image Size Should Be 92 x 80.') }}</span>
                                                                </div>

                                                                <div class="form-group position-relative text-center">
                                                                    <label class="file">
                                                                        <input type="file"  accept="image/*"  class="upload-photo" name="logo" id="file" aria-label="File browser example">
                                                                        <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                                                    </label>
                                                                </div>

                                                            </div>

                                                          </div>
                                                        </div>

                                                        <div id="favicon" class="container tab-pane"><br>
                                                            <div class="row justify-content-center">

                                                                <div class="col-lg-12">

                                                                    <div class="form-group">
                                                                        <label for="name">{{ __('Current Image') }}</label>
                                                                        <div class="col-lg-12 pb-1">
                                                                            <img class="admin-setting-img"
                                                                                src="{{ $setting->favicon ? asset('assets/images/'.$setting->favicon) : asset('assets/images/placeholder.png') }}"
                                                                                alt="No Image Found">
                                                                        </div>
                                                                        <span>{{ __('Image Size Should Be 16 x 16.') }}</span>
                                                                    </div>

                                                                    <div class="form-group position-relative text-center">
                                                                        <label class="file">
                                                                            <input type="file"  accept="image/*"  class="upload-photo" name="favicon" id="file" aria-label="File browser example">
                                                                            <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                                                        </label>
                                                                    </div>

                                                                </div>

                                                            </div>
                                                        </div>

                                                        <div id="loader" class="container tab-pane"><br>
                                                            <div class="row justify-content-center">

                                                                <div class="col-lg-12">
                                                                    <div class="form-group">
                                                                        <label class="switch-primary">
                                                                        <input type="checkbox" class="switch switch-bootstrap " name="is_loader" value="1" {{ $setting->is_loader == 1 ? 'checked' : '' }}>
                                                                        <span class="switch-body"></span>
                                                                        <span class="switch-text">{{ __('Display Loader') }}</span>
                                                                        </label>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="name">{{ __('Current Image') }}</label>
                                                                        <div class="col-lg-12 pb-1">
                                                                            <img class="admin-setting-img"
                                                                                src="{{ $setting->loader ? asset('assets/images/'.$setting->loader) : asset('assets/images/placeholder.png') }}"
                                                                                alt="No Image Found">
                                                                        </div>
                                                                        <span>{{ __('Image Size Should Be 124 x 124.') }}</span>
                                                                    </div>

                                                                    <div class="form-group position-relative text-center">
                                                                        <label class="file">
                                                                            <input type="file"  accept="image/*"  class="upload-photo" name="loader" id="file" aria-label="File browser example">
                                                                            <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                                                        </label>
                                                                    </div>

                                                                </div>

                                                            </div>
                                                        </div>

                                                    </div>

                                                </div>

                                            </div>

                                          </div>

                                          <div id="seo" class="container tab-pane"><br>

                                                <div class="row justify-content-center">

                                                    <div class="col-lg-8">

                                                        <div class="form-group">
                                                            <label for="google_analytics_id">{{ __('Google Analytics ID') }} *</label>
                                                            <input type="text" name="google_analytics_id" class="form-control" id="google_analytics_id"
                                                                placeholder="{{ __('Enter Google Analytics ID') }}" value="{{ $setting->google_analytics_id }}" >
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="meta_keywords">{{ __('Site Meta Keywords') }} *</label>
                                                            <input type="text" name="meta_keywords" class="tags" id="meta_keywords"
                                                                placeholder="{{ __('Site Meta Keywords') }}" value="{{ $setting->meta_keywords }}" >
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="meta_description">{{ __('Site Meta Description') }} *</label>
                                                            <textarea name="meta_description" id="meta_description" class="form-control" rows="5"
                                                                placeholder="{{ __('Enter Site Meta Description') }}"
                                                                >{{ $setting->meta_description }}</textarea>
                                                        </div>

                                                    </div>

                                                </div>

                                          </div>


                                          <div id="links" class="container tab-pane"><br>

                                            <div class="row justify-content-center">

                                                <div class="col-lg-6 offset-lg-3">
                                                    <div class="form-group">
                                                        <label class="switch-primary">
                                                        <input type="checkbox" class="switch switch-bootstrap status" name="is_shop" value="1" {{ $setting->is_shop == 1 ? 'checked' : '' }}>
                                                        <span class="switch-body"></span>
                                                        <span class="switch-text">{{ __('Display Shop') }}</span>
                                                        </label>
                                                    </div>
                                                </div>

                                                <div class="col-lg-6 offset-lg-3">
                                                    <div class="form-group">
                                                        <label class="switch-primary">
                                                        <input type="checkbox" class="switch switch-bootstrap status" name="is_blog" value="1" {{ $setting->is_blog == 1 ? 'checked' : '' }}>
                                                        <span class="switch-body"></span>
                                                        <span class="switch-text">{{ __('Display Blog') }}</span>
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 offset-lg-3">
                                                    <div class="form-group">
                                                        <label class="switch-primary">
                                                        <input type="checkbox" class="switch switch-bootstrap status" name="is_campaign" value="1" {{ $setting->is_campaign == 1 ? 'checked' : '' }}>
                                                        <span class="switch-body"></span>
                                                        <span class="switch-text">{{ __('Display Campaign') }}</span>
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 offset-lg-3">
                                                    <div class="form-group">
                                                        <label class="switch-primary">
                                                        <input type="checkbox" class="switch switch-bootstrap status" name="is_brands" value="1" {{ $setting->is_brands == 1 ? 'checked' : '' }}>
                                                        <span class="switch-body"></span>
                                                        <span class="switch-text">{{ __('Display Brand') }}</span>
                                                        </label>
                                                    </div>
                                                </div>

                                                <div class="col-lg-6 offset-lg-3">
                                                    <div class="form-group">
                                                        <label class="switch-primary">
                                                        <input type="checkbox" class="switch switch-bootstrap status" name="is_faq" value="1" {{ $setting->is_faq == 1 ? 'checked' : '' }}>
                                                        <span class="switch-body"></span>
                                                        <span class="switch-text">{{ __('Display Faq') }}</span>
                                                        </label>
                                                    </div>
                                                </div>

                                                <div class="col-lg-6 offset-lg-3">
                                                    <div class="form-group">
                                                        <label class="switch-primary">
                                                        <input type="checkbox" class="switch switch-bootstrap status" name="is_contact" value="1" {{ $setting->is_contact == 1 ? 'checked' : '' }}>
                                                        <span class="switch-body"></span>
                                                        <span class="switch-text">{{ __('Display Contact') }}</span>
                                                        </label>
                                                    </div>
                                                </div>

                                            </div>

                                          </div>

                                          <div id="footer" class="container tab-pane"><br>

                                            <div class="row justify-content-center">

                                                <div class="col-lg-8">

                                                    <ul class="nav nav-pills nav-justified nav-secondary nav-pills-no-bd">
                                                        <li class="nav-item">
                                                            <a class="nav-link active" data-toggle="pill" href="#footer_basic">{{ __('Basic') }}</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link" data-toggle="pill" href="#footer_link">{{ __('Social Link') }}</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link" data-toggle="pill" href="#working_days">{{ __('Working Days') }}</a>
                                                        </li>
                                                    </ul>

                                                    <div class="tab-content">

                                                        <div id="footer_basic" class="container tab-pane active"><br>
                                                          <div class="row justify-content-center">

                                                            <div class="col-lg-12">

                                                                <div class="col-lg-12">
                                                                    <div class="form-group">
                                                                        <label for="footer_address">{{ __('Store Address') }} *</label>
                                                                        <input type="text" name="footer_address" class="form-control" id="footer_address"
                                                                            placeholder="{{ __('Store Address') }}" value="{{ $setting->footer_address }}" >
                                                                    </div>
                                                                </div>

                                                                <div class="col-lg-12">
                                                                    <div class="form-group">
                                                                        <label for="footer_phone">{{ __('Store Phone Number') }} *</label>
                                                                        <input type="text" name="footer_phone" class="form-control" id="footer_phone"
                                                                            placeholder="{{ __('Store Phone Number') }}" value="{{ $setting->footer_phone }}" >
                                                                    </div>
                                                                </div>

                                                                <div class="col-lg-12">
                                                                    <div class="form-group">
                                                                        <label for="footer_email">{{ __('Store Email') }} *</label>
                                                                        <input type="email" name="footer_email" class="form-control" id="footer_email"
                                                                            placeholder="{{ __('Store Email') }}" value="{{ $setting->footer_email }}" >
                                                                    </div>
                                                                </div>

                                                                <div class="form-group">
                                                                    <label for="footer_gateway_img">{{ __('Current Gateway Image') }}</label>
                                                                    <div class="col-lg-12 pb-1">
                                                                        <img class="admin-setting-img"
                                                                            src="{{ $setting->footer_gateway_img ? asset('assets/images/'.$setting->footer_gateway_img) : asset('assets/images/placeholder.png') }}"
                                                                            alt="No Image Found">
                                                                    </div>
                                                                    <span>{{ __('Image Size Should Be 324 x 31.') }}</span>
                                                                </div>

                                                                <div class="form-group position-relative text-center">
                                                                    <label class="file">
                                                                        <input type="file"  accept="image/*"  class="upload-photo" name="footer_gateway_img" id="footer_gateway_img" aria-label="File browser example">
                                                                        <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                                                    </label>
                                                                </div>

                                                                <div class="col-lg-12">
                                                                    <div class="form-group">
                                                                        <label for="copy_right">{{ __('Copyright') }} *</label>
                                                                        <textarea name="copy_right" id="copy_right" class="form-control" rows="3"
											                            placeholder="{{ __('Copyright') }}"
											                            >{{ $setting->copy_right }}</textarea>
                                                                    </div>
                                                                </div>


                                                            </div>

                                                          </div>
                                                        </div>

                                                        <div id="footer_link" class="container tab-pane"><br>
                                                            <div class="row justify-content-center">

                                                                <div class="col-lg-12">
                                                                    <div id="social-section">
                                                                        @php
                                                                        $links = json_decode($setting->social_link,true)['links'];
                                                                        $icons = json_decode($setting->social_link,true)['icons'];
                                                                        @endphp
                                                                        @foreach ($links as $link_key => $link)
                                                                        <div class="d-flex">
                                                                            <div>
                                                                                <div class="form-group">
                                                                                    <button
                                                                                        class="btn btn-secondary social-picker"
                                                                                        name="social_icons[]"
                                                                                        data-icon="{{$icons[$link_key]}}">
                                                                                    </button>
                                                                                </div>
                                                                            </div>
                                                                            <div class="flex-grow-1">
                                                                                <div class="form-group">
                                                                                    <input type="text" class="form-control"
                                                                                        name="social_links[]"
                                                                                        placeholder="{{ __('Social Link') }}" value="{{$link}}">
                                                                                    </div>
                                                                            </div>
                                                                            <div class="flex-btn">
                                                                                <button type="button" class="btn btn-success add-social" data-text="{{ __('Social Link') }}"> <i class="fa fa-plus"></i> </button>
                                                                            </div>
                                                                        </div>
                                                                        @endforeach



                                                                    </div>

                                                                </div>

                                                            </div>
                                                        </div>

                                                        <div id="working_days" class="container tab-pane"><br>
                                                            <div class="row justify-content-center">

                                                                    <div class="col-lg-6">
                                                                        <div class="form-group">
                                                                            <label for="friday_start">{{ __('Monday-Friday from') }} *</label>
                                                                            <input type="text" name="friday_start" class="form-control timepicker" id="friday_start"
                                                                                placeholder="{{ __('Monday-Friday from') }}" value="{{ $setting->friday_start }}" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6">
                                                                        <div class="form-group">
                                                                            <label for="friday_end">{{ __('Till') }} *</label>
                                                                            <input type="text" name="friday_end" class="form-control timepicker" id="friday_end"
                                                                                placeholder="{{ __('Till') }}" value="{{ $setting->friday_end }}" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6">
                                                                        <div class="form-group">
                                                                            <label for="satureday_start">{{ __('Saturday-Sunday from') }} *</label>
                                                                            <input type="text" name="satureday_start" class="form-control timepicker" id="satureday_start"
                                                                                placeholder="{{ __('Saturday-Sunday from') }}" value="{{ $setting->satureday_start }}" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6">
                                                                        <div class="form-group">
                                                                            <label for="satureday_end">{{ __('Till') }} *</label>
                                                                            <input type="text" name="satureday_end" class="form-control timepicker" id="satureday_end"
                                                                                placeholder="{{ __('Till') }}" value="{{ $setting->satureday_end }}" >
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

									<div>

                                        <div class="form-group d-flex justify-content-center">
                                            <button type="submit" class="btn btn-secondary ">{{ __('Submit') }}</button>
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