<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Tag extends Model {

	//
	// protected $table = 'tag';
	protected $fillable = ['name'];
	public function articles()
	{
	    return $this->belongsToMany('App\Article','article_column','art_id','column_id')->withTimestamps();
	}

}
