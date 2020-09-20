@extends('frontend.master')

@section('mainContent')

<style type="text/css">
  .visitSite{
    float: right;
    color: #f70a0a;
    font-weight: bold;
    text-transform: uppercase;
  }
</style>
  <section class="section bg-light" id="manufacturing">
    <div class="container">
      <div class="row justify-content-md-center" style="margin-top: 60px;margin-bottom: 60px;">
        <div class="col-md-4">
          <div class="img-effect mb-5 mb-md-0">
            @php
              if(file_exists($businessContent->firstInnerImage)){
                $image = asset('/').$businessContent->firstInnerImage;
              }
            @endphp
            @if(file_exists($businessContent->firstInnerImage))
              <img src="{{$image}}" class="img-fluid">
            @else
              <img src="{{$noImage}}" class="img-fluid" style="height: 250px;">
            @endif
          </div>
        </div>
      </div>
      <div class="row align-items-center">
        <div class="col-md-12">
          <h2 class="heading mb-4 col_title_s">
             {{$businessContent->firstHomeTitle }}         
          </h2>
          <p class="text-muted text-justify">
            @php
              echo $businessContent->innerDescription;
            @endphp
          </p>
          @if($businessContent->urlLink)
            <a href="{{$businessContent->urlLink }}" class="visitSite" target="_blank">
              Visit Site
            </a>
          @endif
        </div>
      </div>
    </div> 
  </section>
@endsection