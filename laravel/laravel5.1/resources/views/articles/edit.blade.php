@extends('layout')
@include("zhangmazi::ueditor")
@section('content')
    <h1>修改文章:{{ $article->title }}</h1>
    {!! Form::open(['method'=>'PATCH' ,'url'=>'/articles/'.$article->id]) !!}
    {!! Form::hidden('id',$article->id) !!}<br>
    <div class="form-group">
        {!! Form::label('title','标题:') !!}
        {!! Form::text('title',$article->title,['class'=>'form-control']) !!}
    </div>
    <div class="form-group">
            <label for="content">正文</label>
            <script id="container" name="content" type="text/plain" name="content">{!! $article->content !!}</script>
            <script>
               var ue = UE.getEditor('container', {
                    autoHeight: false
                });
            </script>
        </div>
    <div class="form-group">
        {!! Form::label('published_at','发布日期') !!}
        {!! Form::input('date','published_at',$article->published_at->format('Y-m-d'),['class'=>'form-control']) !!}
    </div>
    <div class="form-group">
        {!! Form::submit('修改文章',['class'=>'btn btn-success form-control']) !!}
    </div>
    {!! Form::close() !!}
    @if($errors->any())
        <ul class="alert alert-danger">
            @foreach($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    @endif
@endsection