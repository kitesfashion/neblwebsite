@if(count($testimonialList)>0)
  <section class="section">
    <div class="line line-top"></div>
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-9">
          <div class="quote s_shadow">
            @foreach ($testimonialList as $testimonial)
              <blockquote class="quote-blockquote">
                <p class="quote-blockquote-content text-justify">
                </p>
                @php
                  echo $testimonial->description
                @endphp
                <p></p>
                <footer class="quote-blockquote-footer">
                  <b>
                    {{$testimonial->name}}
                  </b>
                </footer>
              </blockquote>
            @endforeach
          </div>
          
        </div>
      </div>
    </div>
  </section>
@endif