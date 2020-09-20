<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use URL;
use DB;
use App\HeaderBlock;
use App\Menu;
use App\Article;
use App\TimeZone;
use App\Product;
use App\PhotoGallery;
use App\Category;
use App\ContactAddress;
use App\Team;

class MenuController extends Controller
{
    public function MenuContent($name,$id){ 


		$menuDetails = Menu::where('id',$id)->first(); 
		
//	dd($menuDetails);
    	if($menuDetails->parent == 1 && $id == 9 ){
			$title = $menuDetails->menuName;
	    	$aboutContent = Article::where('menuId',$id)->first();
	    	$missionVissionList = Article::where('articleStatus',1)->where('parentArticle',$aboutContent->id)->orderBy('orderBy','ASC')->get();
	    	$metaTag =[
	            'meta_keyword'=>$aboutContent->metaKeyword,
	            'meta_title' =>$aboutContent->metaTitle,
	            'meta_description' =>$aboutContent->metaDescription
	         ];
	        return view('frontend.about.mission_vission')->with(compact('title','metaTag','menuDetails','aboutContent','missionVissionList'));

		}elseif($menuDetails->parent == 1 && $id == 11 ){
			$title = $menuDetails->menuName;
	    	$aboutContent = Article::where('menuId',$id)->first();
	    	$recognitionList = Article::where('articleStatus',1)->where('parentArticle',$aboutContent->id)->orderBy('orderBy','ASC')->get();
	    	$metaTag =[
	            'meta_keyword'=>$aboutContent->metaKeyword,
	            'meta_title' =>$aboutContent->metaTitle,
	            'meta_description' =>$aboutContent->metaDescription
	         ];
	        return view('frontend.about.recognition')->with(compact('title','metaTag','menuDetails','aboutContent','recognitionList'));

		}elseif($menuDetails->parent == 1 && $id == 26){
	    	$title = $menuDetails->menuName;
	    	$headerContent = HeaderBlock::where('section','team')->where('articleStatus',1)->first();
	    	$teamMemberList = Team::where('status',1)->orderBy('orderBy','ASC')->get();
			return view('frontend.team.index')->with(compact('title','headerContent','teamMemberList'));
			

		}elseif($menuDetails->parent == 1){

	    	$title = $menuDetails->menuName;
	    	$aboutContent = Article::where('menuId',$id)->first();
	    	$metaTag =[
	            'meta_keyword'=>$aboutContent->metaKeyword,
	            'meta_title' =>$aboutContent->metaTitle,
	            'meta_description' =>$aboutContent->metaDescription
	         ];
			return view('frontend.about.aboutContent')->with(compact('title','metaTag','menuDetails','aboutContent'));


		}elseif($menuDetails->parent == 32){

			$title = $menuDetails->menuName;
	    	$aboutContent = Article::where('menuId',$id)->first();
	    	$metaTag =[
	            'meta_keyword'=>$aboutContent->metaKeyword,
	            'meta_title' =>$aboutContent->metaTitle,
	            'meta_description' =>$aboutContent->metaDescription
	         ];
			return view('frontend.service.show')->with(compact('title','metaTag','menuDetails','aboutContent'));

			}elseif($id == 46){
				$title = "Product & Service";
				$metaTag =[
					'meta_keyword'=>"Product & Service",
					'meta_title' =>"Product & Service",
					'meta_description' =>"Product & Service"
				 ];

				return view('frontend.service.proservice')->with(compact('title','metaTag','menuDetails'));



		}elseif($menuDetails->parent == 2){
	    	$title = $menuDetails->menuName;
	    	$businessContent = Article::where('menuId',$id)->first();
	    	$businessContentList = Article::where('articleStatus',1)->where('parentArticle',$businessContent->id)->orderBy('orderBy','ASC')->get();
	    	$timeZoneSection = '';
	    	$timeZoneList = '';
	    	if($id == 14){
	    		$timeZoneSection = HeaderBlock::where('section','timeZone')->where('articleStatus',1)->first();
	    		$timeZoneList = TimeZone::where('status',1)->orderBy('orderBy','ASC')->get();
	    	}
	    	$metaTag =[
	            'meta_keyword'=>$businessContent->metaKeyword,
	            'meta_title' =>$businessContent->metaTitle,
	            'meta_description' =>$businessContent->metaDescription
	         ];
	        return view('frontend.business.business_top')->with(compact('title','metaTag','menuDetails','businessContent','businessContentList','timeZoneSection','timeZoneList'));
		}elseif($menuDetails->parent == 3){
	    	$title = $menuDetails->menuName;
	    	$categoryList = DB::table('products')
	    					->select('products.categoryId','products.menuId','categories.id','categories.name','categories.status','categories.orderBy')
	    					->join('categories','categories.id','=','products.categoryId')
	    					->groupBy('products.categoryId','categories.id','categories.name','products.menuId','categories.status','categories.orderBy')
	    					->orderBy('categories.orderBy','ASC')
	    					->where('categories.status',1)
	    					->where('products.menuId',$id)
	    					->get();
	    	$productList = DB::table('products')
	    					->select('products.*','categories.id as categoryId','categories.name as categoryName')
	    					->join('categories','categories.id','=','products.categoryId')
	    					->where('products.status',1)
	    					->where('menuId',$id)
	    					->orderBy('orderBy','ASC')
	    					->get();
	    	/*$metaTag =[
	            'meta_keyword'=>$businessContent->metaKeyword,
	            'meta_title' =>$businessContent->metaTitle,
	            'meta_description' =>$businessContent->metaDescription
	         ];*/
			return view('frontend.brands.brand_product')->with(compact('title','menuDetails','categoryList','productList'));
			
		}elseif($id == 4){
	    	$title = $menuDetails->menuName;
	    	$headerBlock = HeaderBlock::where('section','photoGallery')->where('articleStatus',1)->first();
	    	$categoryList = Category::where('status',1)->orderBy('orderBy',"asc")->get();
	        return view('frontend.gallery.categories')->with(compact('title','headerBlock','categoryList'));
		}elseif($id == 18){
	    	$title = $menuDetails->menuName;
	    	$headerBlock = HeaderBlock::where('section','contacts')->where('articleStatus',1)->first();
	    	$contactAddressList = ContactAddress::where('status',1)->orderBy('orderBy','ASC')->get();
	        return view('frontend.contact.contact')->with(compact('title','headerBlock','contactAddressList'));
		}elseif($id == 24){
	    	$title = $menuDetails->menuName;
	    	$headerContent = Article::where('menuId',$id)->first();
	    	$officeList = Article::where('articleStatus',1)->where('parentArticle',$headerContent->id)->orderBy('orderBy','ASC')->get();
	        return view('frontend.international_office.index')->with(compact('title','headerContent','officeList'));
		}
    }









    public function BrandCategoryProduct($parentMenuname,$parentMenuId,$categoryName,$categoryId){
    	$menuDetails = Menu::where('id',$parentMenuId)->first();
    	$category = Category::where('id',$categoryId)->first();
    	$title = $menuDetails->menuName .' - '.$category->name;
    	$categoryList = DB::table('products')
    					->select('products.categoryId','products.menuId','categories.id','categories.name','categories.status','categories.orderBy')
    					->join('categories','categories.id','=','products.categoryId')
    					->groupBy('products.categoryId','categories.id','categories.name','products.menuId','categories.status','categories.orderBy')
    					->orderBy('categories.orderBy','ASC')
    					->where('categories.status',1)
    					->where('products.menuId',$parentMenuId)
    					->get();
    	$productList = DB::table('products')
    					->select('products.*','categories.id as categoryId','categories.name as categoryName')
    					->join('categories','categories.id','=','products.categoryId')
    					->where('products.status',1)
    					->where('menuId',$parentMenuId)
    					->where('categoryId',$categoryId)
    					->orderBy('orderBy','ASC')
    					->get();
    	/*$metaTag =[
            'meta_keyword'=>$businessContent->metaKeyword,
            'meta_title' =>$businessContent->metaTitle,
            'meta_description' =>$businessContent->metaDescription
         ];*/
        return view('frontend.brands.brand_product')->with(compact('title','menuDetails','categoryId','categoryList','productList'));
    }

}