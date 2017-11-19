@extends('layout')
@section('content')
<h1>我的名字{{ $name }} {{  $age }}</h1>
<ul>
	@foreach($people as $person)
	<li>{{ $person }}</li>
	@endforeach
</ul>
@endsection