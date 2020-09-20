<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="root_path" content="{{ url('/') }}">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="{{ asset('/').@$information->adminfavIcon }}">
    <title>{{@$information->adminTitle}} @if(@$title)- {{@$title}} @endif</title>
    <link rel="icon" type="image/png" sizes="20x20" href="{{ asset('/').@$information->adminfavIcon }}">

    <style type="text/css">
    .modal {
        position: absolute;
        top: 10px;
        right: 100px;
        bottom: 0;
        left: 0;
        z-index: 10040;
        overflow: auto;
        overflow-y: auto;
    }
</style>

@include('admin.partials.header-assets')
@yield('custom-css')
</head>
<body class="skin-default fixed-layout">

    @include('admin.partials.preloader')
    <div id="main-wrapper">
        <header class="topbar">
            @include('admin.partials.top-navbar')
        </header>
          
        @include('admin.partials.menu')
        <div class="page-wrapper">
            <div class="container-fluid">
                @yield('bread-crumb')
                <div style="padding-bottom: 10px;"></div>

                @php
                    $message = Session::get('msg');
                @endphp

                @if (isset($message))
                    <div class="alert alert-success alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                        <strong>Success!</strong> {{ $message }}
                    </div>
                @endif

                @php
                    Session::forget('msg');
                @endphp

                @if( count($errors) > 0 )
                    <div class="alert alert-danger alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                        <strong>Oops!</strong> {{ $errors->first() }}
                    </div>
                @endif
                <div class="card-body">

                <!-- Card Body Content -->
                @yield('content')

                </div>
            </div>
        </div>
        
        <footer class="footer">
            © 2019 Developed by <a target="_blank" href="http://www.technoparkbd.com/">Techno Park</a>
           
        </footer>        
    </div>

    @include('admin.partials.footer-assets')
    @yield('custom-js')

</body>
</html>