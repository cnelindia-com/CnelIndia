@extends('master.front')
@section('meta')
    <meta name="keywords" content="{{ $setting->meta_keywords }}">
    <meta name="description" content="{{ $setting->meta_description }}">
@endsection
@section('title')
    {{ __('Home') }}
@endsection
@section('content')

    @if ($setting->is_slider == 1)
        <div class="slider-area-wrapper">
            <div class="container">
                <div class="row g-3">
                    <div class="col-lg-3">

                    </div>
                    <div class="col-lg-9">
                        <!-- Main Slider-->
                        <div class="hero-slider">
                            <div class="hero-slider-main owl-carousel dots-inside" >
                                @foreach ($sliders as $slider)
                                    <div class="item
                                    @if (DB::table('languages')->where('is_default',1)->first()->rtl == 1)
                                    d-flex justify-content-end
                                    @endif
                                    "
                                        style="background: url('{{ asset('assets/images/' . $slider->photo) }}')">
                                        <div class="item-inner">
                                            <div class="from-bottom">
                                                <img class="d-inline-block brand-logo"
                                                    src="{{ asset('assets/images/' . $slider->logo) }}"
                                                    alt="logo">
                                                <div class="title text-body">{{ $slider->title }}</div>
                                                <div class="subtitle text-body mb-4">{{ $slider->details }}</div>
                                            </div>
                                            <a class="btn btn-primary btn-sm scale-up delay-1"
                                                href="{{ $slider->link }}">{{ __('View Offers') }}
                                                <i class="icon-arrow-right"></i>
                                            </a>
                                        </div>
                                    </div>
                                @endforeach


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    @endif

    @if ($setting->is_three_c_b_first == 1)
    <div class="bannner-section mt-30">
        <div class="container ">
            <div class="row g-3">
                <div class="col-md-4">
                    <a href="{{$banner_first['firsturl1']}}" class="genius-banner">
                        <img src="{{ asset('assets/images/'.$banner_first['img1']) }}" alt="">
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="{{$banner_first['firsturl2']}}" class="genius-banner">
                        <img src="{{ asset('assets/images/'.$banner_first['img2']) }}" alt="">
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="{{$banner_first['firsturl3']}}" class="genius-banner">
                        <img src="{{ asset('assets/images/'.$banner_first['img3']) }}" alt="">
                    </a>
                </div>
            </div>
        </div>
    </div>
    @endif


    <div id="extra_index_view">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="product-not-found mt-30 mb-30">
                        <img  src="{{asset('assets/images/ajax_loader.gif')}}" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

