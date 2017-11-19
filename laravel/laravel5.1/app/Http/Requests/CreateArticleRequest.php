<?php namespace App\Http\Requests;

use App\Http\Requests\Request;

class CreateArticleRequest extends Request {

	/**
	 * Determine if the user is authorized to make this request.
	 *
	 * @return bool false a发布的文章不能有b来编辑  true开放
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
		return [
			'title' =>'required | min:5',
			'content'=>'required',
			'published_at'=>'required'
		];
	}

}
