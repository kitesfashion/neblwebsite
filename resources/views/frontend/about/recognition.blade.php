@extends('frontend.master')

@section('mainContent')
  <section class="section section-top bg-light" id="recongnition">
    <div class="bg-triangle bg-triangle-dark bg-triangle-left bg-triangle-top"></div>
    <div class="bg-triangle bg-triangle-dark bg-triangle-right bg-triangle-bottom"></div>
    <div class="container">
      <div class="row align-items-center">
        <div class="col-12 col-md-6">
          <h1 class="mb-4 col_title" style="font-size: 30px">
            {{$aboutContent->firstHomeTitle}}
          </h1>
          <p class="text-justify mb-5 text-muted">
            @php
              echo $aboutContent->homeDescription;
            @endphp
        </div>

        <div class="col-12 col-md-6">
          <div class="bd-example">
            <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
              <div class="carousel-inner">
                @php
                  $i = 0;
                @endphp
                @foreach ($recognitionList as $recognition)
                @php
                  $i++;
                  if(file_exists($recognition->firstHomeImage)){
                    $image = asset('/').$recognition->firstHomeImage;
                  }else{
                    $image = $noImage;
                  }
                @endphp
                  <div class="carousel-item @if($i == 1) active @endif">
                    <img src="{{ $image }}" class="card-img rec_img">
                    <div class="carousel-caption d-md-none d-md-block rec_caption text-center">
                      <h5 class="slider_title text-center">
                        @php
                          echo $recognition->homeDescription;
                        @endphp
                      </h5>
                    </div>
                  </div>
                @endforeach
              </div>
              <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                <i class="fas fa-chevron-left fa-2x color_icon"></i>
                <span class="sr-only">Previous</span>
              </a>
              <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                <i class="fas fa-chevron-right fa-2x color_icon"></i>
                <span class="sr-only">Next</span>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
@endsection