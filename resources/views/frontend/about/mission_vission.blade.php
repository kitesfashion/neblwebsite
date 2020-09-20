@extends('frontend.master')

@section('mainContent')
	<section class="section section-top" id="history">
    <div class="container">
      <div class="row justify-content-center mt_4rem">
        <div class="col-md-12 col-lg-9">
          <h2 class="text-center mb-4 col_title">
             {{$aboutContent->firstHomeTitle}}
          </h2>
          <p class="text-muted text-justify mb-5">
            @php
            	echo $aboutContent->homeDescription;
            @endphp
          </p>
        </div>
      </div>

      <div class="row">
        @foreach ($missionVissionList as $missionVission)
          <div class="col-md-6">
            <div class="text-center mb-5 mb-md-0">
              <div class="text-primary mb-4">
                <span class="icon icon-2x">
                  @php
                    echo $missionVission->articleIcon;
                  @endphp
                </span>
              </div>
              <h4 class="mb-3 col_title">
                {{$missionVission->firstHomeTitle}}
              </h4>
              <p class="text-muted text-justify mb-0">
                @php
                  echo $missionVission->homeDescription;
                @endphp                         
              </p>
            </div>
          </div>
        @endforeach
      </div>
    </div>
  </section>
@endsection