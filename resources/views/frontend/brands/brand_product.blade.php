@extends('frontend.master')

@section('mainContent')
<style type="text/css">
  .flickity-page-dots {
    display: block;
  }
</style>
  <section class="section" id="section1">
    @if(count($productList) > 0)
      <div class="row justify-content-center ml-0 mr-0">
        <div class="col-md-12 col-lg-8 mb-2">
          <div class="row">
            @foreach ($categoryList as $category)
              @php
                $parentMenuName = str_replace([' ','/','---'], '-', $menuDetails->menuName);
                $categoryName = str_replace([' ','/','---'], '-', $category->name);
                if($category->id == @$categoryId){
                  $fabric_color = 'fabric_color';
                }else{
                  $fabric_color = '';
                }
              @endphp
              <div class="col-md-4">
                <a href="{{ route('brandCategory.product',['parentMenuName'=>$parentMenuName,'parentMenuId'=>$menuDetails->id,'categoryName'=>$categoryName,'categoryId'=>$category->id]) }}" class="brand-item mb-4 {{@$fabric_color}}"> 
                  {{$category->name}}
                </a>
              </div>
            @endforeach
          </div>
        </div>
      </div>

      <div class="container-fluid">
        <div class="row align-items-center mb-5">
          <div class="col-md-12 plpr0">
            <div class="carousel carousel-main" data-flickity>
              @foreach ($productList as $product)
                <div class="slider-item">
                  <div class="row">
                    <div class="col-md-1 d-flex align-self-center d-flex justify-content-end">
                      <div class="model-cat mb-4 mb-md-0">
                        <h4 class="text-vertical">
                          <span class="model-cat-title fade show col_title"> <!--  text-zigzag -->
                           {{$product->categoryName}}                                      
                          </span>
                        </h4>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="model-img mb-5 mb-md-0">
                        @if(file_exists($product->firstHomeImage))
                         <img src="{{ asset('/').$product->firstHomeImage }}" class="model-img-src img-fluid fade show ">
                        @else
                          <img src="{{ $noImage }}" class="model-img-src img-fluid fade show" style="height: 500px;">
                        @endif
                      </div>
                    </div>
                    <div class="col-md-5">

                      <h3 class="model-heading mb-4 fade show col_title">
                        {{$product->name}}                              
                      </h3>

                      <div class="model-content mb-5 mb-md-0 fade show slider_arrow_pr">
                        <p class="mb-5 text-justify text-muted">
                          @php
                            echo $product->homeDescription;
                          @endphp                                
                        </p>
                      </div>
                    </div>            
                  </div>                
                </div>
              @endforeach
            </div>
          </div>
        </div>
      </div>

      <div class="carousel carousel-nav" data-flickity='{ "asNavFor": ".carousel-main", "contain": true, "pageDots": false }'>
      @foreach ($productList as $product)
        <div class="slider-item col-6 col-md-2">
          @if(file_exists($product->firstHomeImage))
           <img src="{{ asset('/').$product->firstHomeImage }}" class="img-fluid border_img">
          @else
            <img src="{{ $noImage }}" class="img-fluid border_img">
          @endif
        </div>
      @endforeach
      </div>
    @endif
  </section>
@endsection