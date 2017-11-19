<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link href="https://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
	<link href="{{ asset('/css/all.css') }}" rel="stylesheet" type="text/css">
<!-- 	<link href="{{ asset('/css/select.css') }}" rel="stylesheet" />
	<script src="{{ asset('/js/select.js') }}"></script> -->
	<link href="https://cdn.bootcss.com/select2/4.0.2-rc.1/css/select2.min.css" rel="stylesheet" />
	<script src="https://cdn.bootcss.com/select2/4.0.2/js/select2.full.min.js"></script>
	<script src="https://cdn.bootcss.com/jquery/2.1.0/jquery.min.js"></script>
</head>
<body>
	<div class="container">
        <section class="content">
            <div class="pad group">
                @yield('content')
            </div>
        </section>
	 </div>
</body>
</html>