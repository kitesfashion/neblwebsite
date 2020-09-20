@extends('frontend.master')

@section('mainContent')
@php
  $remainderOrderBy = $businessContent->orderBy % 2;
  if($remainderOrderBy != 0){
    $sectionClass = 'bg-light';
  }else{
    $sectionClass = '';
  }
@endphp
<style type="text/css">
  .viewDetails{
    font-weight: bold;
    color: #0d5ecc;
    text-transform: uppercase;
  }
  .visitSite{
    float: right;
    color: #f70a0a;
    font-weight: bold;
    text-transform: uppercase;
  }
</style>
  <section class="section {{@$sectionClass}}" id="manufacturing">
    <div class="row justify-content-center ml-0 mr-0 mt-4">
      <div class="col-md-8 col-lg-6 mb-2">
        <h1 class="text-center mb-4 col_title">
          {{$businessContent->firstHomeTitle}}
        </h1>
      </div>
    </div>

    <div class="row justify-content-center">
      <div class="col-md-12 col-lg-10">
        @if(strlen(@$businessContent->homeDescription) > 68)
          <p class="text-justify text-muted mb-3">
            @php
              echo $businessContent->homeDescription;
            @endphp
          </p>
        @endif
      </div>
    </div>
    @php
      $i = 0;
    @endphp
    @foreach ($businessContentList as $business)
      @php
        $i++;
        if(file_exists($business->firstHomeImage)){
          $image = asset('/').$business->firstHomeImage;
        }

        $remainderOddEven = $i % 2;
        $parentMenuName = str_replace([' ','/','---'], '-', $menuDetails->menuName);
        $menuName = str_replace([' ','/','---'], '-', $business->articleName);
      @endphp

      @if($remainderOddEven == 0)
        <div class="container" @if($i>1)style="margin-top: 60px;"@endif>
          <div class="row align-items-center">
            <div class="col-md-6">
              <div class="img-effect img-effect-border mb-5 mb-md-0">
                @if(file_exists($business->firstHomeImage))
                  <img src="{{$image}}" class="img-fluid">
                @else
                  <img src="{{$noImage}}" class="img-fluid" style="height: 250px;">
                @endif
              </div>

            </div>
            <div class="col-md-6">
              <h2 class="heading mb-4 col_title_s">
                 {{$business->firstHomeTitle }}         
              </h2>
              <p class="text-muted text-justify">
                @php
                  echo $business->homeDescription;
                @endphp
              </p>
              <a href="{{ route('business.details',['parentMenuName'=>$parentMenuName,'menuName'=>$menuName,'id'=>$business->id]) }}" class="viewDetails">
                View Details
              </a>
              @if($business->urlLink)
                <a href="{{$business->urlLink }}" class="visitSite" target="_blank">
                  Visit Site
                </a>
              @endif
            </div>
          </div>
        </div> 
      @else
        <div class="container" @if($i>1)style="margin-top: 60px;"@endif>
          <div class="row align-items-center">
            <div class="col-md-6 order-md-2 mt-5">
              <div class="img-effect img-effect-border mb-5 mb-md-0">
                @if(file_exists($business->firstHomeImage))
                  <img src="{{$image}}" class="img-fluid">
                @else
                  <img src="{{$noImage}}" class="img-fluid" style="height: 250px;">
                @endif
                  
              </div>
            </div>

            <div class="col-md-6 order-md-1">
              <h2 class="mb-4">
                {{$business->firstHomeTitle }}    
              </h2>

              <p class="text-muted text-justify">
                @php
                  echo $business->homeDescription;
                @endphp
              </p>
              <a href="{{ route('business.details',['parentMenuName'=>$parentMenuName,'menuName'=>$menuName,'id'=>$business->id]) }}" class="viewDetails">
                View Details
              </a>
              @if($business->urlLink)
                <a href="{{$business->urlLink }}" class="visitSite" target="_blank">
                  Visit Site
                </a>
              @endif
            </div>
          </div>
        </div>
      @endif
    @endforeach
  </section>

  @if(@$timeZoneSection)
    <style type="text/css">
      .slider .flickity-button.previous {
          top: -45px;
          border: 2px solid #ffdc87;
          margin-right: 3px;
      }
      .slider .flickity-button.next {
          top: -45px;
          border: 2px solid #ffdc87;
      }
    </style>
    <section class="section">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-12 col-md-4">
            <h2 class="mb-4 col_title_s">
              {{@$timeZoneSection->firstHomeTitle}}
            </h2>
            <p class="mb-5 text-justify text-muted">
              @php
                echo @$timeZoneSection->homeDescription;
              @endphp
            </p>
          </div>

          <div class="col-12 col-md-8">
            <div class="slider"> 
              @foreach ($timeZoneList as $timeZone)
                <div class="slider-item col-12 col-md-10 col-lg-6">
                  <div class="position-relative">
                    <a class="card border-0" href="#">
                      @if(file_exists($timeZone->image))
                        <img src="{{ asset('/').$timeZone->image }}" class="model-img-src img-fluid fade show ">
                      @else
                        <img src="{{ $noImage }}" class="model-img-src img-fluid fade show ">
                      @endif
                      <div class="card-body">
                        <div class="row align-items-center mb-3">
                          <div class="col">
                            <h4 class="card-title mb-0 col_title_s">
                              {{$timeZone->name}}                                               
                            </h4>

                          </div>
                        </div>

                        <p class="mb-0 text-sm text-muted">
                          <span style="font-weight: 700;"> 
                            <i class="fas fa-map-marker-alt"></i> 
                            </span> 
                            {{$timeZone->siteAddress1}} <br>                                        
                           &nbsp;&nbsp; {{$timeZone->siteAddress2}}                                         
                        </p>
                        <p class="mb-0 text-sm text-muted">
                          <span style="font-weight: 700;"> <i class="fas fa-phone"></i> 
                          </span> 
                          {{$timeZone->mobile1}} <br>                                        
                           &nbsp;&nbsp; {{$timeZone->mobile2}}                                       
                        </p>
                      </div>
                    </a>
                  </div>
                </div> 
              @endforeach
            </div>
          </div>
        </div>
      </div>
    </section>
  @endif

  @if($menuDetails->id == 22)
    <section class="section" id="bs_associates">

      <!-- Content -->
      <div class="container">
        <div class="row">
          <div class="col">
            <!-- Slider -->
            <div class="carousel" data-flickity='{ "autoPlay": true }'>
              <!-- Item 1 -->
              <div class="testimonial-slider-item">
                <div class="testimonial-slider-item-inner">
                  <!-- Card -->
                  <div class="card card-lg bg-white mb-3 mb-lg-0">

                    <!-- Body -->
                    <div class="card-body text-center">
                      <!-- Title -->
                      <h4 class="card-title col_title_s"> Ad Agencies </h4>
                      <!-- Text -->
                      <ul class="card-text list-iconed">
                        <li class="list-iconed-item">
                          Adcomm Limited (Lintas)
                        </li>
                        <li class="list-iconed-item">
                          FCB Bitopi (FCB)
                        </li>
                        <li class="list-iconed-item">
                          Grey Advertising BD (Grey Worldwide)
                        </li>
                        <li class="list-iconed-item">
                          Unitrend Ltd. (Mccann Erickson)
                        </li>
                      </ul>
                    </div>
                  </div> <!-- / .card -->
                </div>
              </div>

              <!-- Item 2 -->
              <div class="testimonial-slider-item">
                <div class="testimonial-slider-item-inner">
                  <!-- Card -->
                  <div class="card card-lg bg-white mb-3 mb-lg-0">

                    <!-- Body -->
                    <div class="card-body text-center">
                      <!-- Title -->
                      <h4 class="card-title col_title_s"> Insurance Company </h4>
                      <!-- Text -->
                      <ul class="card-text list-iconed">
                        <li class="list-iconed-item">
                          Green Delta Insurance
                        </li>
                        <li class="list-iconed-item">
                          Prime Insurance
                        </li>
                        <li class="list-iconed-item">
                          Paramount Insurance
                        </li>
                      </ul>
                    </div>
                  </div> <!-- / .card -->
                </div>
              </div>

              <!-- Item 3 -->
              <div class="testimonial-slider-item">
                <div class="testimonial-slider-item-inner">
                  <!-- Card -->
                  <div class="card card-lg bg-white mb-3 mb-lg-0">

                    <!-- Body -->
                    <div class="card-body text-center">
                      <!-- Title -->
                      <h4 class="card-title col_title_s"> Bank </h4>
                      <!-- Text -->
                      <ul class="card-text list-iconed">
                        <li class="list-iconed-item">
                          South East Bank Limited
                        </li>
                        <li class="list-iconed-item">
                          Bank Asia Ltd
                        </li>
                        <li class="list-iconed-item">
                          Dhaka Bank Ltd
                        </li>
                        <li class="list-iconed-item">
                          Mercantile Bank Ltd
                        </li>
                        <li class="list-iconed-item">
                          Mutual Trust Bank
                        </li>
                        <li class="list-iconed-item">
                          Premier Bank Limited
                        </li>
                        <li class="list-iconed-item">
                          Pubali Bank Limited
                        </li>
                        <li class="list-iconed-item">
                          Trust Bank
                        </li>
                        <li class="list-iconed-item">
                          Brac Bank
                        </li>
                      </ul>
                    </div>
                  </div> <!-- / .card -->
                </div>
              </div>

              <!-- Item 4 -->
              <div class="testimonial-slider-item">
                <div class="testimonial-slider-item-inner">
                  <!-- Card -->
                  <div class="card card-lg bg-white mb-3 mb-lg-0">

                    <!-- Body -->
                    <div class="card-body text-center">
                      <!-- Title -->
                      <h4 class="card-title col_title_s"> Lease Financing Company </h4>
                      <!-- Text -->
                      <ul class="card-text list-iconed">
                        <li class="list-iconed-item">
                          IDLC
                        </li>
                        <li class="list-iconed-item">
                          IPDC
                        </li>
                      </ul>
                    </div>
                  </div> <!-- / .card -->
                </div>
              </div>
            </div>
          </div>
        </div> <!-- / .row -->
      </div> <!-- / .container -->

    </section>
  @endif

@endsection