<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
	<link rel="shortcut icon" href="{{{ asset('img/favicon.png') }}}">

    <title>Event menagment</title>

    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
	<!-- Custom styles for this template -->
    <link href="/css/dashboard.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="/css/starter-template.css" rel="stylesheet">
	<link href="/css/jquery-ui.min.css" rel="stylesheet">
  <link href="/css/mods.css" rel="stylesheet">
  <!-- css for chosen, multiple select list with filtering -->
   <link href="/css/chosen.css" rel="stylesheet">
  </head>

  <body>

@include ('layouts.nav')

    <main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">

@yield('content')
    </main>
  </div>
</div>

<!--  zwykły footer w pliku footer.blade.php-->
@include('layouts.footer')
