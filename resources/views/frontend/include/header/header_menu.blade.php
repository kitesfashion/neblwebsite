@php
  use App\Menu;
  use App\Article;
    $menuList = Menu::orderBy('orderBy','ASC')->where('showInMenu','yes')->where('menuStatus','1')->where('parent',NULL)->orWhere(\DB::raw('menus.id'), '=', \DB::raw('menus.parent'))->get();
@endphp
@php
  if(url('/') == URL::current()){
    $navClass = 'navbar navbar-expand-xl navbar-dark pt-0  navbar-togglable fixed-top pb-0';
  }else{
    $navClass = 'navbar navbar-expand-xl navbar-light pt-0 pb-0 fixed-top s_box_shadow';
  }
@endphp

<nav class="@php echo $navClass @endphp">
  <div class="container">
    <a class="navbar-brand" href="{{ url('/') }}">
      @if(file_exists(@$information->siteLogo))
        <img class="img-fluid img_width lightLogo" src="{{ asset('public/uploads/site_logo/logo/light/ggg.png') }}" style="margin: 0px auto;display: block; height:60px !important; ">
        <img class="img-fluid img_width colorLogo" src="{{ asset('/').$information->siteLogo }}" style="margin: 0px auto">
      @else
       <img class="img-fluid img_width" src="{{ $noImage }}" style="height: 45px;">
      @endif
      <p style="margin: 0"></p>
      @if(url::current() == url('/'))
        <img src="{{ asset('public/frontend/slogan/slogan_image.png') }}">
      @endif
    </a>

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item ">
          <a href="{{ url('/') }}" class="nav-link">
            Home
          </a>
        </li>
        @foreach ($menuList as $menu)
        @php
          $menuName = str_replace([' ','/','---'], '-', $menu->menuName);
          $subMenuList = Menu::orderBy('orderBy','ASC')->where('menuStatus',1)->where('parent',$menu->id)->get();

          if(count($subMenuList) > 0){
            $dropdownAnchor = 'class="nav-link dropdown-toggle" id="navbarWelcome" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"';
            $menuLink = '';
          }else{
            $dropdownAnchor = '
              class="nav-link"';
            $menuLink = route('menu.content',['menuName'=>$menuName,'menuId'=>$menu->id]);
          }
        @endphp
          <li class="nav-item dropdown">
            <a href="{{$menuLink}}" @php echo $dropdownAnchor; @endphp>
              {{$menu->menuName}}
            </a>
            @if(count($subMenuList) > 0)
              @if($menu->id == 2)
                <div class="dropdown-menu row" aria-labelledby="navbarWelcome" style="width: 450px;">
                  @foreach ($subMenuList as $subMenu)
                  @php
                    $subMenuName = str_replace([' ','/','---'], '-', $subMenu->menuName);
                     if($subMenu->urlLink){
                      $subMenuLink = $subMenu->urlLink;
                    }else{
                      $subMenuLink = route('menu.content',['menuName'=>$subMenuName,'menuId'=>$subMenu->id]);
                    }
                  @endphp
                    <div class="col-md-6 businessColumn">
                      <a target="_blank" class="dropdown-item" href="{{$subMenuLink}}" style="padding: 0px;">
                        @if(file_exists($subMenu->firstHomeImage))
                          <img src="{{asset($subMenu->firstHomeImage)}}" class="businessImage">
                        @else
                          <span>{{$subMenu->menuName}}</span>
                        @endif
                      </a>
                    </div>
                  @endforeach
                </div>
              @else
                <div class="dropdown-menu" aria-labelledby="navbarWelcome">
                  @foreach ($subMenuList as $subMenu)
                  @php
                    $subMenuName = str_replace([' ','/','---'], '-', $subMenu->menuName);
                     if($subMenu->urlLink){
                      $subMenuLink = $subMenu->urlLink;
                    }else{
                      $subMenuLink = route('menu.content',['menuName'=>$subMenuName,'menuId'=>$subMenu->id]);
                    }
                  @endphp
                      <a class="dropdown-item " href="{{$subMenuLink}}">
                        {{$subMenu->menuName}}
                      </a>
                  @endforeach
                </div>
              @endif
            @endif
          </li>
        @endforeach

      </ul>
    </div>
  </div> 
</nav>