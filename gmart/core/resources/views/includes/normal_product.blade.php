@forelse ($items as $item)
            <div class="col-gd">
                <div class="product-card">
                    <a class="product-thumb" href="{{route('front.product',$item->slug)}}">
                        @if($item->stock == 0 && $item->item_type == 'normal')
                            <div class="product-badge bg-secondary border-default text-body
                            ">{{__('out of stock')}}</div>
                        @endif

                            <img src="{{asset('assets/images/'.$item->photo)}}" alt="Product"></a>
                    <div class="product-card-body">
                        <div class="product-category"><a href="{{route('front.catalog').'?category='.$item->category->slug}}">{{$item->category->name}}</a></div>
                        <h3 class="product-title"><a href="{{route('front.product',$item->slug)}}">
                            {{ strlen(strip_tags($item->name)) > 35 ? substr(strip_tags($item->name), 0, 35) : strip_tags($item->name) }}
                        </a></h3>
                        <div class="rating-stars">
                        <i class="far fa-star filled"></i><i class="far fa-star filled"></i><i class="far fa-star filled"></i><i class="far fa-star filled"></i><i class="far fa-star filled"></i>
                        </div>
                        <h4 class="product-price">
                            @if ($item->previous_price !=0)
                            <del>{{PriceHelper::setPreviousPrice($item->previous_price)}}</del>
                            @endif
                            {{PriceHelper::grandCurrencyPrice($item)}}
                            </h4>
                    </div>
                    <div class="product-button-group"><a class="product-button wishlist_store" href="{{route('user.wishlist.store',$item->id)}}"><i class="icon-heart"></i><span>{{__('Wishlist')}}</span></a><a data-target="{{route('fornt.compare.product',$item->id)}}" class="product-button product_compare" href="javascript:;"><i class="icon-repeat"></i><span>{{__('Compare')}}</span></a>
                        @if($item->stock != 0 || $item->item_type =='digital')
                        <a class="product-button add_to_single_cart"  data-target="{{ $item->id }}" href="javascript:;"  ><i class="icon-shopping-cart"></i><span>{{__('To Cart')}}</span>
                        </a>
                        @else
                        <a class="product-button" href="{{route('front.product',$item->slug)}}"><i class="icon-arrow-right"></i><span>{{__('Details')}}</span></a>
                        @endif
                    </div>
                </div>
            </div>
            @empty
            <div class="card">
                <div class="card-body text-center">
                    {{__('No Product Found')}}
                </div>
            </div>
            @endforelse
