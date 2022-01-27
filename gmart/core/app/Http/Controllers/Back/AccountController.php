<?php

namespace App\Http\Controllers\Back;

use Auth;

use App\{
    Http\Controllers\Controller,
    Http\Requests\ImageUpdateRequest,
    Repositories\Back\AccountRepository
};

use Illuminate\Http\Request;

class AccountController extends Controller
{
    /**
     * Constructor Method.
     *
     * Setting Authentication
     *
     * @param  \App\Repositories\Back\AccountRepository $repository
     *
     */
    public function __construct(AccountRepository $repository)
    {
        $this->middleware('auth:admin');

        $this->repository = $repository;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('back.dashboard.index',[
            'totalUsers' => $this->repository->getTotalUsers(),
            'totalItems' => $this->repository->getTotalItems(),
            'totalOrders' => $this->repository->getTotalOrders(),
            'recentUsers' => $this->repository->getRecentUsers(),
            'recentOrders' => $this->repository->getRecentOrders(),
            'totalBrand' => $this->repository->getTotalBrand(),
            'totalCategory' => $this->repository->getTotalCategory(),
            'totalReview' => $this->repository->getTotalReview(),
            'totalTransaction' => $this->repository->getTotalTransaction(),
            'totalPendingTicket' => $this->repository->getTotalPendingTicket(),
            'totalTicket' => $this->repository->getTotalTicket(),
            'totalBlog' => $this->repository->getTotalBlog(),
            'totalSubscriber' => $this->repository->getTotalSubscriber(),
        ]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function profileForm()
    {
        $data = Auth::guard('admin')->user();
        return view('back.dashboard.profile',compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function updateProfile(ImageUpdateRequest $request)
    {
        $this->repository->updateProfile($request);
        return redirect()->back()->withSuccess(__('Profile Updated Successfully!'));

    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function passwordResetForm()
    {
        return view('back.dashboard.password');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function updatePassword(Request $request)
    {
        $request->validate([
            'current_password' => 'required|min:4|max:16',
            'new_password' => 'required|min:4|max:16',
            'renew_password' => 'required|min:4|max:16',
        ]);

        $resp = $this->repository->updatePassword($request);

        if($resp['status']){
            return redirect()->back()->withSuccess($resp['message']);
        }else{
            return redirect()->back()->withErrors($resp['message']);
        }

    }

}
