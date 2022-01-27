<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Request;

class ItemRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $segment = explode('/',Request::path());
        $check = false;
        if(in_array('update',$segment)){
            $check = true;
        }
       
       
        $type_required = $this->item_type == 'digital' ? '' : 'required';
        $check_link = $this->file_type == 'link' ? 'required' : '';
        $check_file = $this->item_type == 'digital' && $this->file_type == 'link' ? 'required' : '';
        $id = $this->item ? ',' . $this->item->id : '';
        $required = $this->item ? '' : 'required|';
        
        
        return [
            'name'            => 'required|max:255',
            'slug'            => 'required','unique:items,slug' . $id, 'regex:/^[a-zA-Z0-9-]+$/',
            'category_id'     => 'required',
            'details'         => 'required',
            'link'            => $check_link,
            'file'            => $check_file.'|file|mimes:zip',
            'sort_details'    => 'required|max:250',
            'discount_price'  => 'required|max:50',
            'previous_price'  => 'max:50',
            'stock'           => $type_required.'|numeric|max:9999999999',
            'tax_id'          => 'required',
            'photo'           => $required, 'mimes:jpeg,jpg,png,svg'
        ];
    }

    /**
     * Get the error messages for the defined validation rules.
     *
     * @return array
     */
    public function messages()
    {

        return [
            'name.required'            =>  __('Name field is required.'),
            'tax_id.required'          =>  __('Tax field is required.'),
            'category_id.required'     =>  __('Category field is required.'),
            'brand_id.required'        =>  __('Brand field is required.'),
            'slug.required'            =>  __('Slug field is required.'),
            'slug.unique'              =>  __('This slug has already been taken.'),
            'details.required'         =>  __('Description field is required.'),
            'sort_details.required'    =>  __('Sort Description field is required.'),
            'discount_price.required'  =>  __('Current Price field is required.'),
            'stock.required'           =>  __('Stock field is required.'),
            'photo.required'           =>  __('Image field is required.'),
            'photo.mimes'              =>  __('Image type must be jpg,jpeg,png,svg.')
        ];
    }

}
