@extends('frontend.master')

@section('mainContent')
<style type="text/css">
  #contactFormButton{
    font-size: 13px;
  }
</style>
  <div class="section_mod-c">
    <div class="container">
      <div class="row">
        <div class="col-md-5 wow slideInLeft" data-wow-delay="2s">
          <section class="section-contacts-block">
            <h4 class="contacts-block__title ui-title-inner" style="text-transform:uppercase;">
              {{$headerBlock->firstHomeTitle}}
            </h4>
              <div class="decor-2 decor-2_mod-b">
                <img src="{{ asset('/public/frontend/assets') }}/images/border-contact.jpg" >
              </div>
              <div class="contacts-block__description">
                @php
                  echo $headerBlock->innerDescription;
                @endphp
              </div>
              <div class="contacts-block clearfix">
                <i class="icon flaticon-telephone114">
                  <img src="{{ asset('/public/frontend/assets') }}/images/telephone114.jpg" alt="Best Fashion apparel exporter in India"></i>
                <span class="contacts-block__inner">
                  <span class="contacts-block__emphasis color-primary">
                    {{$information->mobile1}}
                  </span>
                  {{$headerBlock->firstInnerTitle}}
                </span>
              </div>
              <div class="contacts-block clearfix">
                <i class="icon flaticon-mail45">
                  <img src="{{ asset('/public/frontend/assets') }}/images/email.jpg">
                </i>
                <span class="contacts-block__inner">
                  <a href="mailto:{{$information->siteEmail1}}" title="Mens wear supplier in Gurgaon" class="contacts-block__emphasis color-primary">{{$information->siteEmail1}}
                  </a> 
                  {{$headerBlock->secondInnerTitle}}
                </span>
              </div>
            </section><!-- end contacts-block -->

            <section class="section-contacts-block">
              <h4 class="contacts-block__title ui-title-inner" style="text-transform:uppercase;">
                {{$headerBlock->secondHomeTitle}}
              </h4>
              <div class="decor-2 decor-2_mod-b">
                <img src="{{ asset('/public/frontend/assets') }}/images/border-contact.jpg" alt="Best Mens wear manufacturer in India">
              </div>
              <div class="contacts-block contacts-block_mod-a clearfix">
                <i class="icon flaticon-location74">
                  <img src="{{ asset('/public/frontend/assets') }}/images/map.jpg" alt="Sports wear supplier in Gurgaon">
                </i>
                <span class="contacts-block__inner">
                    @php
                      echo $information->siteAddress1;
                    @endphp 
                  <br>

                  @php
                    echo $information->siteAddress2;
                  @endphp
                </span>
              </div>
              <div class="contacts-block contacts-block_mod-a clearfix">
                <i class="icon flaticon-print44">
                  <img src="{{ asset('/public/frontend/assets') }}/images/fax.jpg" alt="Organic Cotton products supplier in India">
                </i>
                <span class="contacts-block__inner">
                  {{$information->mobile1}} / {{$information->mobile2}}
                </span>
              </div>
            
            </section><!-- end contacts-block -->
          </div><!-- end col -->

        <div class="col-md-7 col-md-offset-1 wow slideInRight" data-wow-duration="2s">
           <form action="" method="post" name="contactForm">
              <div class="wrap-title-block wrap-title-block_mod-c">
                <h3 class="ui-title-block ui-title-block_mod-c">
                  {{$headerBlock->articleName}}
                </h3>
                <div class="decor-1 decor-1_mod-b" style="margin-bottom:15px;">
                  <img src="{{ asset('/public/frontend/assets') }}/images/send.jpg" alt="Best leather jacket exporter in India">
                </div>
              </div>
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="contactName">Your Name <span style="color: red">*</span></label>
                    <input type="text" class="form-control" id="contactName" aria-describedby="emailHelp" placeholder="Enter your full name">
                  </div>
                </div>

                <div class="col-md-6">
                  <div class="form-group">
                    <label for="contactEmail">Email address <span style="color: red">*</span></label>
                    <input type="email" class="form-control" id="contactEmail" aria-describedby="emailHelp" placeholder="Enter email">
                  </div>
                </div>
              </div>

              <div class="row">
                <div class="col-md-12">
                  <div class="form-group">
                    <label for="contactTitle">Subject <span style="color: red">*</span></label>
                    <input type="text" class="form-control" id="contactTitle" aria-describedby="emailHelp" placeholder="Enter your subject">
                  </div>
                </div>
              </div>

              <div class="row">
                <div class="col-md-12">
                  <div class="form-group">
                    <label for="contactMessage">Message <span style="color: red">*</span></label>
                    <textarea class="form-control" rows="5" id="contactMessage"></textarea>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-12">
                  <button type="submit" class="btn btn-dark" id="contactFormButton" style="float: right;">
                    Send Message
                  </button>
                </div>
              </div>
            </form>
        </div>
        <!-- end col -->
      </div>
      <!-- end row -->
    </div>
    <!-- end container -->
  </div>
@endsection