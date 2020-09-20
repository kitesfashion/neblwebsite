@extends('frontend.master')

@section('mainContent')
@php
  use App\PhotoGallery;
@endphp
<style type="text/css">
  .category_title{/*
    border-bottom: 1px solid #ec6060;*/
    color: #12bf6f;
  }
</style>
  <section class="section" id="section2">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-8 col-lg-6">
          <h2 class="text-center mt-2 mb-3 col_title">
            {{$headerBlock ->firstHomeTitle}}
          </h2>
        </div>
      </div>

      @foreach ($categoryList as $category)
      @php
        $PhotoGalleryList = PhotoGallery::where('status',1)
                            ->where('category_id',$category->id)
                            ->orderBy('orderBy',"asc")
                            ->get();
      @endphp
        <div class="row justify-content-center mb-5 pb-4" style="border: 1px solid #eae5e5;">
          <div class="col-md-12 col-lg-12">
            <h3 class="text-center mt-2 mb-3 category_title">
              {{$category ->name}}
            </h3>

            <div class="row">
              @foreach ($PhotoGalleryList as $PhotoGallery)
                @if(file_exists($PhotoGallery->image))
                  <div class="col-md-4 mb-3">
                    <img src="{{ asset($PhotoGallery->image) }}">
                  </div>
                @endif
              @endforeach
              

            </div>
          </div>
        </div>
      @endforeach
    </div>
  </section>
@endsection