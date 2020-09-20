<!-- Plugins CSS -->
<link rel="stylesheet" href="{{ asset("public/frontend") }}/assets/libs/flickity/dist/flickity.min.css">
<link rel="stylesheet" href="{{ asset("public/frontend") }}/assets/libs/fullpage.js/dist/fullpage.min.css">
<link rel="stylesheet" href="{{ asset("public/frontend") }}/assets/libs/highlightjs/styles/codepen-embed.css">
<link rel="stylesheet" href="{{ asset("public/frontend") }}/assets/libs/%40fortawesome/fontawesome-free/css/all.min.css">
<link rel="stylesheet" href="{{ asset("public/frontend") }}/assets/libs/incline-icons/style.min.css">

<!-- Theme CSS -->
<link rel="stylesheet" href="{{ asset("public/frontend") }}/assets/css/kallol.css">
<link rel="stylesheet" href="{{ asset("public/frontend") }}/assets/css/style.css">
<link rel="stylesheet" href="{{ asset("public/frontend") }}/assets/css/animation_style.css">
<link href="{{ asset('/public/admin-elite/dist/css/jquery.fancybox.min.css') }}" rel="stylesheet">

<link href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" rel="stylesheet"/>


<style type="text/css">
	@if(URL::current() == url('/'))
		.colorLogo{
		    display: none;
		}
	 @else
	 	.colorLogo{
		    display: block !important;
		}

		.lightLogo{
		    display: none !important;
		}
	 @endif
</style>