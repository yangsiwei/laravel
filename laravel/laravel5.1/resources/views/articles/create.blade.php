@extends('layout')
@section('content')
<style type="text/css">
	.tag-sm.database {
    background-color: #48466D;
    border: 1px solid #48466D;
}
.select2-container--default .select2-selection--multiple .select2-selection__choice[title=Lumen] {
    background-color: #FF8A0C;
}
</style>
@include("zhangmazi::ueditor")
<h1>撰写新文章</h1><hr>
	{!! Form::open(['url'=>'/articles']) !!}
		<div class="form-grop">
			{!! Form::label('title','标题') !!}
			{!! Form::text('title',null,['class'=>'form-control']) !!}
		</div>
		<div class="form-group">
			<label for="content">正文</label>
			<script id="container" name="content" type="text/plain" name="content"></script>
			<script>
			   var ue = UE.getEditor('container', {
				    autoHeight: false
				});
			</script>
			

		</div>
		<div class="form-group">
			{!! Form::label('published_at','发布日期') !!}
			{!! Form::input('date','published_at',date('Y-m-d'),['class'=>'form-control']) !!}
		</div>
		<div class="form-group">
			{!! Form::label('tag_list','选择标签') !!}
			{!! Form::select('tag_list[]',$tags,null,['class'=>'form-control js-example-basic-multiple','multiple'=>'multiple']) !!}
		</div>
		<div class="form-grop">
			{!! Form::submit('发表文章',['class'=>'btn btn-success form-control']) !!}
		</div>
		@if($errors->any)
			@foreach($errors->all() as $error)
				<li class="list-group-item list-group-item-danger">{{ $error }}</li>
			@endforeach
		@endif
	{!! Form::close() !!}
<script type="text/javascript">
$(function() {
    $(".js-example-basic-multiple").select2({
        placeholder: "添加标签"
    });
});
</script>
@endsection