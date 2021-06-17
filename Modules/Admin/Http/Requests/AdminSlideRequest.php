<?php

namespace Modules\Admin\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdminSlideRequest extends FormRequest
{
    public function rules()
    {
        return [
            's_name' => 'required',
            's_sort' => 'required',
            's_banner' => 'required_without:s_banners|image|mimes:jpeg,png,jpg,gif,svg|max:20480' ,
        ];
    }

    public function messages()
    {
        return [
            's_name.required' => 'Tên không được để trống',
            's_sort.required' => 'Số Thứ tự ko được để trống',
            's_banner.required' => 'Banner không được để trống',
            's_banner.mimes' => 'Banner không đúng định dạng',
            's_banner.max' => 'Kích thước ảnh quá lớn',
            's_banner.image' => 'File phải là ảnh',
        ];
    }

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }
}
