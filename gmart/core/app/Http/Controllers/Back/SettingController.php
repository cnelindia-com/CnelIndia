<?php

namespace App\Http\Controllers\Back;

use Illuminate\Http\Request;

use App\{
    Models\Setting,
    Models\Language,
    Models\EmailTemplate,
    Http\Controllers\Controller,
    Http\Requests\SettingRequest,
    Repositories\Back\SettingRepository
};



class SettingController extends Controller
{

    /**
     * Constructor Method.
     *
     * Setting Authentication
     *
     * @param  \App\Repositories\Back\SettingRepository $repository
     *
     */
    public function __construct(SettingRepository $repository)
    {
        $this->middleware('auth:admin');

        $this->repository = $repository;
    }

    /**
     * Show the form for updating resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function system()
    {

        return view('back.settings.system');
    }


    /**
     * Show the form for updating resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function menu()
    {

        return view('back.settings.menu');
    }

    /**
     * Show the form for updating resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function language()
    {
        $data = Language::first();
        $data_results = file_get_contents(resource_path().'/lang/'.$data->file);
        $lang = json_decode($data_results, true);
        return view('back.settings.language',compact('data','lang'));
    }

    /**
     * Show the form for updating resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function social()
    {
        return view('back.settings.social',[
            'google_url' => url('/auth/google/callback'),
            'facebook_url' => preg_replace("/^http:/i", "https:", url('/auth/facebook/callback'))
        ]);
    }



    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update(SettingRequest $request)
    {
        $this->repository->update($request);
        return redirect()->back()->withSuccess(__('Data Updated Successfully.'));
    }


    public function section()
    {
        return view('back.settings.section');
    }

    public function visiable(Request $request)
    {
        $setting = Setting::find(1);

        if(isset($request['is_slider'])){
            $input['is_slider'] = 1;
        }else{
            $input['is_slider'] = 0;
        }


        if(isset($request['is_service'])){
            $input['is_service'] = 1;
        }else{
            $input['is_service'] = 0;
        }

        if(isset($request['is_three_c_b_first'])){
            $input['is_three_c_b_first'] = 1;
        }else{
            $input['is_three_c_b_first'] = 0;
        }
        if(isset($request['is_popular_category'])){
            $input['is_popular_category'] = 1;
        }else{
            $input['is_popular_category'] = 0;
        }
        if(isset($request['is_blogs'])){
            $input['is_blogs'] = 1;
        }else{
            $input['is_blogs'] = 0;
        }
        
        if(isset($request['is_three_c_b_second'])){
            $input['is_three_c_b_second'] = 1;
        }else{
            $input['is_three_c_b_second'] = 0;
        }
        if(isset($request['is_highlighted'])){
            $input['is_highlighted'] = 1;
        }else{
            $input['is_highlighted'] = 0;
        }
        if(isset($request['is_two_column_category'])){
            $input['is_two_column_category'] = 1;
        }else{
            $input['is_two_column_category'] = 0;
        }
        if(isset($request['is_popular_brand'])){
            $input['is_popular_brand'] = 1;
        }else{
            $input['is_popular_brand'] = 0;
        }
        if(isset($request['is_featured_category'])){
            $input['is_featured_category'] = 1;
        }else{
            $input['is_featured_category'] = 0;
        }
        if(isset($request['is_two_c_b'])){
            $input['is_two_c_b'] = 1;
        }else{
            $input['is_two_c_b'] = 0;
        }

        $setting->update($input);
        return redirect()->back()->withSuccess(__('Data Updated Successfully.'));

    }



    public function announcement(){
        return view('back.settings.announcement');
    }

    public function maintainance(){
        return view('back.settings.maintainance');
    }
}
