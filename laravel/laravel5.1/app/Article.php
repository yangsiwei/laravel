<?php namespace App;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;
class Article extends Model {

	//
	 protected $fillable = ['title','content','intro','published_at','user_id'];
	 protected $dates = ['published_at'];
	 public function setPublishedAtAttribute($date)
	{
	    $this->attributes['published_at'] = Carbon::createFromFormat('Y-m-d',$date);
	}
   /*
	*相当于$articles = Article::where('published_at','<=',Carbon::now())->latest()->get();
	*
	*/
	public function scopePublished($query)
	{
	    $query->where('published_at','<=',Carbon::now());
	}
	 public function getTagListAttribute()
    {
        // laravel 5.1 needs all()
        return $this->tags->lists('id')->all();
        // tags means tags() many-to-many relationship with tag
    }

    public function tags()
	{
	   return $this->belongsToMany('App\Tag')->withTimestamps();
	}
	public function user(){
		return $this->belongsTo('App\User');
	}
	public function hasManyComments()
    {
        return $this->hasMany('App\Comment', 'article_id', 'id');
    }
	//  public function setPasswordAttribute($passowrd)
	// {
	//     $this->attributes['password'] = Hash::make($passowrd);
	//     //仅仅是举例
	// }

}
