<script src="{{ asset("public/frontend") }}/assets/libs/jquery/dist/jquery.min.js"></script>

<!-- Plugins JS -->
<script src="{{ asset("public/frontend") }}/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script src="{{ asset("public/frontend") }}/assets/libs/flickity/dist/flickity.pkgd.min.js"></script>
<script src="{{ asset("public/frontend") }}/assets/libs/jquery-parallax.js/parallax.min.js"></script>
<script src="{{ asset("public/frontend") }}/assets/libs/waypoints/lib/jquery.waypoints.min.js"></script>
<script src="{{ asset("public/frontend") }}/assets/libs/waypoints/lib/shortcuts/inview.min.js"></script>
<script src="{{ asset("public/frontend") }}/assets/libs/fullpage.js/vendors/scrolloverflow.min.js"></script>
<script src="{{ asset("public/frontend") }}/assets/libs/fullpage.js/dist/fullpage.min.js"></script>
<script src="{{ asset("public/frontend") }}/assets/libs/highlightjs/highlight.pack.min.js"></script>
<script type="text/javascript" src="{{ asset('/public/admin-elite/dist/js/jquery.fancybox.min.js') }}"></script>

<!-- Theme JS -->
<script src="{{ asset("public/frontend") }}/assets/js/main.min.js"></script>

<script>
    $(function () { 
	    $(window).scroll(function () {
	        if ($(this).scrollTop() > 2) { 
	            $('#chng').attr('src','asset/images/kallolLogoBlue.png');
	        }
	        if ($(this).scrollTop() <= 2) { 
	            $('#chng').attr('src','asset/images/kallolLogo.png');
	        }
	    })
	});
</script>

<script>
    // When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function() {scrollFunction()};
    
    function scrollFunction() {
      if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("myBtn").style.display = "inline-block";
         $(".lightLogo").css("display", "none");
        $(".colorLogo").css("display", "block");
      } else {
        document.getElementById("myBtn").style.display = "none";
        $(".lightLogo").css("display", "block");
        $(".colorLogo").css("display", "none");
      }
    }
    
    // When the user clicks on the button, scroll to the top of the document
    function topFunction() {
      document.body.scrollTop = 0;
      document.documentElement.scrollTop = 0;
    }
</script>

<script type="text/javascript">
  $('[data-fancybox="gallery"]').fancybox({
    buttons : [
      'download',
      'slideShow',
      'thumbs',
      'close'
    ],
  });
</script>