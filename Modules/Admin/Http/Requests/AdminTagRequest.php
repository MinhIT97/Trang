<?php

namespace Modules\Admin\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdminTagRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            't_name' => 'required',
            't_slug' => 'required|unique:tags,t_slug',
        ];
    }

    public function messages()
    {
        return [
            't_name.required' => 'Du lieu khong duoc de trong',
            't_slug.required' => 'Du lieu khong duoc de trong',
            't_slug.unique'   => 'Slug da ton tai',
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
