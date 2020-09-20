<section class="topSction">
    {{-- <div id='stars'></div>
    <div id='stars2'></div>
    <div id='stars3'></div> --}}
    <div id='title'>
    	@php
    		if(file_exists($sliders->image)){
    			$image = asset('/').$sliders->image;
    		}else{
    			$image = $noImage;
    		}
    	@endphp
        <img class="svg_img_star text-light" src="{{ $image }}" alt="No Star">
        {{-- <div id="animateDiv">Hello Test aniamtion</div> --}}
    </div>
</section>