@extends('frontend.master')

@section('mainContent')
<style type="text/css">
  .officeTitle{
    border-bottom: 1px solid #adabab;
    margin-bottom: 20px;
    width: auto;
    display: inline-block;
  }

  .officeTitle h5{
    color: #0ca97f;
  }

  p{
    margin-bottom: 0px !important;
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
      foreach ($officeList as $office) {
    @endphp
      <div class="col-md-3 col-sm-6 col-12" style="margin-bottom: 30px;">
        <div class="row">
          <div class="col-md-12">
            <div class="officeTitle">
              <h5>{{$office->firstInnerTitle}}</h5>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-md-3">
            <div class="imageBlock">
              @if(file_exists($office->firstInnerImage))
                <img src="{{asset($office->firstInnerImage)}}">
              @else
                <img src="{{$noImage}}" width="110" height="40">
              @endif
            </div>
          </div>

          <div class="col-md-9 p-md-0">
            <div class="descriptionBlock">
              @php
                echo $office->innerDescription;
              @endphp
            </div>
          </div>
        </div>
      </div>
    @php } @endphp
  </div>
</section>
  
@endsection