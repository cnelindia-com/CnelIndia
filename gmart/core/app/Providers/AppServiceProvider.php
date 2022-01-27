<?php

namespace App\Providers;

use Illuminate\
    {
        Support\ServiceProvider,
        Support\Facades\DB
    };



class AppServiceProvider extends ServiceProvider
{
    public function boot()
    {
        view()->composer('*',function($settings){
            $settings->with('setting', DB::table('settings')->find(1));
            if (!session()->has('popup'))
            {
                view()->share('visit', 1);
            }
            session()->put('popup' , 1);
        });
    }

    public function register()
    {

    }
}
