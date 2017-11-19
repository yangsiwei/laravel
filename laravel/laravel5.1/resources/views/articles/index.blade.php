@extends('app')
@section('content')
<h1><a href="{{ url('articles/create') }}" style="color:green; ">BLOG</a></h1>
@foreach($articles as $article)
<ul class="post-meta pad group">
<li><i class="fa fa-clock-o"></i>{{ $article->published_at->diffForHumans() }}</li>
@if($article->tags)
    @foreach($article->tags as $tag)
        <li><i class="fa fa-tag"></i>{{ $tag->name }}</li>
    @endforeach
@endif
</ul>
<article class="format-image group">

    <h2 class="post-title pad">

        <a href="{{ url('articles',$article->id) }}"> {{ $article->title }}</a>

    </h2>

    <div class="post-inner">

        <div class="post-deco">

            <div class="hex hex-small">

                <div class="hex-inner"><i class="fa"></i></div>

                <div class="corner-1"></div>

                <div class="corner-2"></div>

            </div>

        </div>

        <div class="post-content pad">

            <div class="entry custome">

                {!! $article->intro !!}

            </div>

            <a class="more-link-custom" href="{{ url('articles',$article->id) }}"><span><i>更多</i></span></a>

        </div>

    </div>

</article>
@endforeach
@endsection