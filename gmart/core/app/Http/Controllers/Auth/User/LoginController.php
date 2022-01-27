<?php

namespace App\Http\Controllers\Auth\User;

use App\{
    Http\Controllers\Controller,
    Http\Requests\AuthRequest,
};
use Auth;
use Illuminate\Support\Facades\Session;

class LoginController extends Controller
{
    public function __construct()
    {
        $this->middleware('guest', ['except' => ['logout', 'userLogout']]);
    }

    public function showForm()
    {
      
      return view('user.auth.login');
    }

    public function login(AuthRequest $request)
    {

      // Attempt to log the user in
      if (Auth::attempt(['email' => $request->login_email, 'password' => $request->login_password])) {
        // if successful, then redirect to their intended location
        if(!Auth::user()->email_token){
          Session::flash('error',__('Email not verify !'));
          return redirect()->back();
        }
          if($request->has('modal')){
            return redirect()->back();
          }else{
            return redirect()->intended(route('user.dashboard'));
          }

      }

      // if unsuccessful, then redirect back to the login with the form data
        Session::flash('error',__('Email Or Password Doesn\'t Match !'));
        return redirect()->back();
      

    }

    public function logout()
    {
        Auth::logout();
        return redirect('/');
    }
}
