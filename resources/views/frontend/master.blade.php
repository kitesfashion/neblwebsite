<!DOCTYPE html>
    <html lang="en">
        <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <META NAME="KEYWORDS" CONTENT="<?php echo @$metaTag['meta_keyword']; ?>">
        <META NAME="TITLE" CONTENT="<?php echo @$metaTag['meta_title']; ?>">
        <META NAME="DESCRIPTION" CONTENT="<?php echo @$metaTag['meta_description']; ?>">

        <link rel="shortcut icon" type="image/png" href="{{ asset('/').@$information->sitefavIcon }}">
        <title>{{$information->siteName}} @if(@$title) {{@$information->titlePrefix}} @endif {{ @$title }}</title>
        @include('frontend.include.header.header_asset')
    </head>
    <body>
        @include('frontend.include.header.header_menu')
        @yield('mainContent')

        <footer class="section bg-dark">
            <!-- Triangles -->
            <div class="bg-triangle bg-triangle-light bg-triangle-bottom bg-triangle-left"></div>
            <div class="bg-triangle bg-triangle-light bg-triangle-bottom bg-triangle-right"></div>

            <div class="container">
                <div class="row">
                    <div class="col-md-10 mx-auto">
                        <div class="text-center center-block">
                            @foreach ($socialLink as $social)
                                <a target="_blank" href="{{ $social->link }}" class="text-white">
                                    <i id="social-fb" class="@php echo $social->icon; @endphp fa-2x social"></i>
                                </a>
                            @endforeach
                        </div>
                        <hr class="footer_hr">
                        <p class="txt-kallol text-center text-white text-muted"> COPYRIGHT © {{Date('Y')}} NEBL </p>
                        <p class="txt-plab text-center text-white text-muted">
                         DESIGNED & DEVELOPED BY @ 
                            <a target="_blank" href="http://technoparkbd.com/">
                                <span class="text-success">TECHNO PARK BANGLADESH</span>
                            </a>
                        </p>

                    </div>
                </div>
            </div> <!-- / .container -->
        </footer>

        <div class="row fixed-bottom float-right">
            <div class="col-md-12 text-right">
                <span class="text-danger bottomTotop" onclick="topFunction()" id="myBtn" title="Go to top">
                    <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                             viewBox="0 0 513 513" style="enable-background:new 0 0 513 513;" xml:space="preserve">
                        <style type="text/css">
                            .st0{fill:#fff;}
                        </style>
                        <path class="st0" d="M449.8,207c8,8,8,20.6,0,28.6c-7.7,7.7-20.6,7.7-28.3,0L276.6,90.7V471c0,11.1-8.9,20-20,20s-20.3-8.9-20.3-20
                            V90.7L91.8,235.5c-8,7.7-20.9,7.7-28.6,0c-8-8-8-20.6,0-28.6L242.4,27.8c7.7-7.7,20.6-7.7,28.3,0L449.8,207z"/>
                    </svg>
                </span>
            </div>
        </div>

        @include('frontend.include.footer.footer_asset')
        @include('frontend.include.others.contact_javascript')
        @yield('custom_js')
    </body>

    </html>

