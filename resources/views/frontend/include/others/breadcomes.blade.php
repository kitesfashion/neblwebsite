@php
    use App\Menu;
    
@endphp
<style type="text/css">
    .bread_link{
        font-weight: bold;
        color: #1defdb;
    }
    .bread_link:after{
        content: "\2192";
        margin-left: 6px;
        margin-right: 4px;
        color: #fff;
    }
</style>
<section class="banner haslayout parallax-window" style="background-image:url('{{asset('/public/frontend/breadcomes/')}}/cape.jpg');" data-img-width="2000" data-img-height="400" data-diff="100">
</section>
<div class="breadcrumbs haslayout">
    <div class="container">
      <ol class="breadcrumb">
        <li><a href="{{url('/')}}">Home</a></li>
        @if (@$product && URL::previous() != url('/').'/')
            @php
                $menus = Menu::where('id','2')->first();
                $menuName = str_replace(' ', '-', $menus->menuName);
                $menuLink = route('menu.content',['menuName'=>$menuName,'menuId'=>$menus->id]);
            @endphp
             <li><a href="{{ @$menuLink }}">{{@$menus->menuName}}</a></li>
             <li class="active"><a>{{@$title}}</a></li>

        @elseif(@$subMenuList)
            @php
                $menus = Menu::where('id','5')->first();
                $menuName = str_replace(' ', '-', $menus->menuName);
                $mainMenuLink = route('menu.content',['menuName'=>$menuName,'menuId'=>$menus->id]);
                $menuLink = route('menu.content',['menuName'=>$menuName,'menuId'=>$menus->id]);
            @endphp
             <li><a href="{{ @$mainMenuLink }}">{{@$menus->menuName}}</a></li>
             <li><a class="parentCategoryName">{{@$subMenu->menuName}}</a></li>
             <li class="categoryName"><a>{{@$title}}</a></li>

        @elseif(@$blog)
            @php
                $menus = Menu::where('id','46')->first();
                $menuName = str_replace(' ', '-', $menus->menuName);
                $mainMenuLink = route('menu.content',['menuName'=>$menuName,'menuId'=>$menus->id]);
                $menuLink = route('menu.content',['menuName'=>$menuName,'menuId'=>$menus->id]);
            @endphp
             <li><a href="{{ @$mainMenuLink }}">{{@$menus->menuName}}</a></li>
             <li class="categoryName"><a>{{$title}}</a></li>
        @elseif(@$teamCategoryList && $teamMemberList)
            @php
                $menus = Menu::where('id','42')->first();
                $menuName = str_replace(' ', '-', $menus->menuName);
                $mainMenuLink = route('menu.content',['menuName'=>$menuName,'menuId'=>$menus->id]);
            @endphp
             <li><a href="{{ @$mainMenuLink }}">{{@$menus->menuName}}</a></li>
             <li class="categoryName"><a>{{$title}}</a></li>
        @else
            <li class="active">{{$title}}</li>
        @endif

      </ol>
    </div>
</div>