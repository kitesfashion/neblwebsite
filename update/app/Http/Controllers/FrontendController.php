<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use App\Slider;
use App\Article;
use App\Settings;
use App\Testimonial;
use Response;

class FrontendController extends Controller
{
    public function index()
    {    $webInfo = Settings::first();
         $sliders = Slider::orderBy('orderBy','ASC')->where('status','1')->first();

         $welcomeSection = Article::where('articleStatus',1)->where('id',8)->first();

         $companyMessege = Article::where('articleStatus',1)->where('id',9)->first();

         $testimonialList = Testimonial::orderBy('orderBy','ASC')->where('status',1)->get();
         
         $title = $webInfo->siteTitle;
         $metaTag =[
            'meta_keyword'=>$webInfo->metaKeyword,
            'meta_title' =>$webInfo->metaTitle,
            'meta_description' =>$webInfo->metaDescription
         ];
         
        return view('frontend.home.home')->with(compact('title','metaTag','sliders','welcomeSection','companyMessege','testimonialList'));
    }

    public function BusinessDetails($parentMenuName,$menuName,$id){
        $businessContent = Article::where('id',$id)->first();
        $title = $businessContent->articleName;
        $metaTag =[
            'meta_keyword'=>$businessContent->metaKeyword,
            'meta_title' =>$businessContent->metaTitle,
            'meta_description' =>$businessContent->metaDescription
         ];
        return view('frontend.business.business_details')->with(compact('title','metaTag','businessContent'));
    }
     
     
    
    public function Page404()
    {
      return view('frontend.pages.page404');
    }
}
