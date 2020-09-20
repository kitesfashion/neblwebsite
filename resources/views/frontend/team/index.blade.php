@extends('frontend.master')

@section('mainContent')
<style type="text/css">
  .teamMeberName{
    font-size: 16px;
    font-weight: bold;
    display: block;
  }

  .teamMeberDesignation{
    font-size: 15px;
    font-weight: bold;
    display: block;
    color: #696868;
  }
  .teamMemberImagBlock:hover{
    opacity: 0.8
  }
</style>
<section class="section bg-light" id="manufacturing">
  <div class="row justify-content-center ml-0 mr-0 mt-4">
    <div class="col-md-10 col-lg-10 mb-2">
      <h1 class="text-center mb-4 col_title">
        {{$headerContent->firstInnerTitle}}
      </h1>

      <div>
        @php
          echo $headerContent->innerDescription;
        @endphp
      </div>
    </div>
  </div>

  <div class="row ml-0 mr-0 mt-4">
    @php
      foreach ($teamMemberList as $teamMeber) {

    @endphp
      <div class="col-lg-4 col-md-6 col-sm-6 col-12" style="padding-bottom: 30px;">
        <div class="row">
          <div class="col-lg-6 col-md-6 col-sm-5 col-5">
            <div class="teamMemberImagBlock">
              @if(file_exists($teamMeber->image))
                <a data-fancybox="gallery" href="{{asset($teamMeber->image)}}">
                   <img src="{{asset($teamMeber->image)}}">
                </a>
              @else
                <a data-fancybox="gallery" href="{{asset($teamMeber->image)}}">
                  <img src="{{$noImage}}">
                </a>
              @endif
                
            </div>
          </div>

          <div class="col-lg-6 col-md-6 col-sm-7 col-7 p-lg-0 my-auto">
            <div{{--  style="margin-top: 10px" --}}>
              <span class="teamMeberName">{{$teamMeber->name}}</span>
              <span class="teamMeberDesignation">{{$teamMeber->designation}}</span>
           </div>
          </div>
        </div>
      </div>
    @php } @endphp
  </div>
</section>
  
@endsection