<?php

namespace App\Repositories\Back;

use Auth;
use App\{
    Models\Post,
    Models\User,
    Models\Order,
    Helpers\ImageHelper,
    Helpers\PriceHelper
};
use App\Models\Brand;
use App\Models\Category;
use App\Models\Item;
use App\Models\Review;
use App\Models\Subscriber;
use App\Models\Ticket;
use App\Models\Transaction;
use App\Models\Withdraw;
use Illuminate\Support\Facades\Hash;

class AccountRepository
{

    /**
     * Update profile.
     *
     * @param  \App\Http\Requests\ImageUpdateRequest  $request
     * @return \Illuminate\Http\Response
     */

    public function updateProfile($request)
    {
        $input = $request->all();
        $data = Auth::guard('admin')->user();
        if ($file = $request->file('photo')) {
            $input['photo'] = ImageHelper::handleUpdatedUploadedImage($file,'/assets/images',$data,'/assets/images/','photo');
        }
        $data->update($input);
    }


    /**
     * Update password.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */

    public function updatePassword($request)
    {
        $data = Auth::guard('admin')->user();

        if ($request->current_password){
            if (Hash::check($request->current_password, $data->password)){
                if ($request->new_password == $request->renew_password){
                    $input['password'] = Hash::make($request->new_password);
                }else{
                    return [
                        'status'  => false,
                        'message' => __('Confirm password does not match.')
                    ];
                }
            }else{
                return [
                    'status'  => false,
                    'message' => __('Current password Does not match.')
                ];
            }
        }

        $data->update($input);

        return [
            'status'  => true,
            'message' => __('Successfully changed your password')
        ];

    }

    public function getTotalOrders()
    {
        return Order::count();
    }

    public function getTotalUsers()
    {
        return User::count();
    }

    public function getTotalItems()
    {
        return Item::count();
    }

    public function getRecentOrders()
    {
        return Order::latest('id')->take(10)->get();
    }

    public function getRecentUsers()
    {
        return User::latest('id')->take(10)->get();
    }

    public function getRecentProducts()
    {
        return Item::latest('id')->take(10)->get();
    }
    public function getTotalCategory()
    {
        return Category::count();
    }
    public function getTotalBrand()
    {
        return Brand::count();
    }
    public function getTotalReview()
    {
        return Review::count();
    }
    public function getTotalTransaction()
    {
        return Transaction::count();
    }
    public function getTotalPendingTicket()
    {
        return Ticket::whereStatus('Pending')->count();
    }
    public function getTotalTicket()
    {
        return Ticket::count();
    }
    public function getTotalBlog()
    {
        return Post::count();
    }
    public function getTotalSubscriber()
    {
        return Subscriber::count();
    }

}
