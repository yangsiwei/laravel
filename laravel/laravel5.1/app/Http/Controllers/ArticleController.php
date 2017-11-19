<?php namespace App\Http\Controllers;
use App\Article;
use App\Tag;
use App\User;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
// use Illuminate\Support\Facades\User;
use Carbon\Carbon;
use App\Http\Requests ;
class ArticleController extends Controller {
	public function __construct()
	{
		$this->middleware('auth');
	}

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		//
		// $articles = Article::all();
		 // $tags = Tag::lists('name', 'id');
		$articles = Article::latest()->published()->get();
		// $a = $article->created_at->diffForHumans();
		return view('articles.index',compact('articles'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		 $tags = Tag::lists('name', 'id');
		 // dd($tags);
	    //为了在界面中显示标签name，id为了在保存文章的时候使用。
	    return view('articles.create',compact('tags'));
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store(Requests\CreateArticleRequest $request)
	{
		
		$input =$request->all();
		// dd($input);
		$input['intro'] = mb_substr($request->get('content'),0,64);
		// $input['published_at'] = Carbon::now();
		// $article = Article::create($input);
		$article =  Article::create(array_merge(['user_id'=>\Auth::user()->id],$input));
    	$article->tags()->attach($request->input('tag_list'));
        // Article::create(array_merge(['user_id'=>\Auth::user()->id],$input));

        return redirect('/articles');

	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//
		return view('articles/show')->withArticle(Article::with('hasManyComments')->find($id));
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		$article=Article::findOrFail($id);
		return view('articles.edit',compact('article'));
		// dd($article);
		// $article->update($request->all());
  //       return redirect('/articles');
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update(Request $request,$id)
	{
		$article=Article::findOrFail($id);
		// dd($article);
		$article->update($request->all());
        return redirect('/articles');
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}

}
