<?php

namespace App\Http\Controllers\Back;

use App\{
    Models\Item,
    Models\Gallery,
    Http\Requests\ItemRequest,
    Http\Controllers\Controller,
    Http\Requests\GalleryRequest,
    Repositories\Back\ItemRepository
};
use App\Models\Category;
use App\Models\ChieldCategory;
use App\Models\Currency;
use App\Models\Subcategory;
use Illuminate\Http\Request;

class ItemController extends Controller
{

    /**
     * Constructor Method.
     *
     * Setting Authentication
     *
     * @param  \App\Repositories\Back\ItemRepository $repository
     *
     */
    public function __construct(ItemRepository $repository)
    {
        $this->middleware('auth:admin');
        $this->repository = $repository;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if($request->type){
            $datas = Item::whereIsType($request->type)->get();
        }else{
            $datas = Item::orderBy('id','desc')->get();
        }

        return view('back.item.index',[
            'datas' => $datas
        ]);
    }

    /**
     * Show the form for get subcategory a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function getsubCategory(Request $request)
    {

        if($request->category_id){
            $data = Category::findOrFail($request->category_id);
            $data = $data->subcategory;
        }else{
            $data = [];
        }

        return response()->json(['data'=>$data]);
    }

    /**
     * Show the form for get subcategory a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function getChildCategory(Request $request)
    {

        if($request->subcategory_id){
            $data = Subcategory::findOrFail($request->subcategory_id);
            $data = $data->childcategory;
        }else{
            $data = [];
        }

        return response()->json(['data'=>$data]);
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('back.item.create',[
            'curr' => Currency::where('is_default',1)->first()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ItemRequest $request)
    {
        $this->repository->store($request);
        return redirect()->route('back.item.index')->withSuccess(__('New Product Added Successfully.'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function edit(Item $item)
    {
        return view('back.item.edit',[
            'item' => $item,
            'curr' => Currency::where('is_default',1)->first(),
            'social_icons' => json_decode($item->social_icons,true),
            'social_links' => json_decode($item->social_links,true),
            'specification_name' => json_decode($item->specification_name,true),
            'specification_description' => json_decode($item->specification_description,true),
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\ItemRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function update(ItemRequest $request, Item $item)
    {
        $this->repository->update($item, $request);
        return redirect()->route('back.item.index')->withSuccess(__('Product Updated Successfully.'));
    }

    /**
     * Change the status for editing the specified resource.
     *
     * @param  int  $id
     * @param  int  $status
     * @return \Illuminate\Http\Response
     */
    public function status(Item $item,$status)
    {
        $item->update(['status' => $status]);
        return redirect()->route('back.item.index')->withSuccess(__('Status Updated Successfully.'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Item $item)
    {
        $this->repository->delete($item);
        return redirect()->route('back.item.index')->withSuccess(__('Product Deleted Successfully.'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function galleries(Item $item)
    {
        return view('back.item.galleries',compact('item'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\GalleryRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function galleriesUpdate(GalleryRequest $request)
    {
        $this->repository->galleriesUpdate($request);
        return redirect()->back()->withSuccess(__('Gallery Information Updated Successfully.'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function galleryDelete(Gallery $gallery)
    {
        $this->repository->galleryDelete($gallery);
        return redirect()->back()->withSuccess(__('Successfully Deleted From Gallery.'));
    }


    public function highlight(Item $item)
    {
        return view('back.item.highlight',[
            'item' => $item
        ]);
    }
    public function highlight_update(Item $item,Request $request)
    {
        $this->repository->highlight($item, $request);
        return redirect()->route('back.item.index')->withSuccess(__('Product Updated Successfully.'));
    }




    // ---------------- DIGITAL PRODUCT START ---------------//

    public function deigitalItemCreate()
    {
        return view('back.item.digital.create',[
            'curr' => Currency::where('is_default',1)->first()
        ]);
    }

    public function deigitalItemStore(ItemRequest $request)
    {
        $this->repository->store($request);
        return redirect()->route('back.item.index')->withSuccess(__('New Product Added Successfully.'));
    }

    public function deigitalItemEdit($id)
    {
        $item = Item::findOrFail($id);

        return view('back.item.digital.edit',[
            'item' => $item,
            'curr' => Currency::where('is_default',1)->first(),
            'social_icons' => json_decode($item->social_icons,true),
            'social_links' => json_decode($item->social_links,true),
            'specification_name' => json_decode($item->specification_name,true),
            'specification_description' => json_decode($item->specification_description,true),
        ]);
    }


    


}
