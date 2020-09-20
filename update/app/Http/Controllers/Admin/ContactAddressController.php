<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\ContactAddress;

class ContactAddressController extends Controller
{
    
    public function index()
    {
        $contactAddressList = ContactAddress::orderBy('orderBy','ASC')->get();
        $title = 'Manage All Contact Address';
        return view('admin.contactAddress.index')->with(compact('contactAddressList','title'));
    }

    public function add(Request $request){
        $title = 'Create New Contact Address';
        if(count($request->all()) > 0){
            /*if($request->image){
                $width = '364';
                $height = '275';
                $image = \App\HelperClass::UploadImage($request->image,'time_zone','public/uploads/time_zones/',@$width,@$height);
                $contactAddress->update( [
                    'image' => @$image,          
                ]);
            }*/
           $contactAddress = ContactAddress::create( [     
                'title' => $request->title,
                'name' => $request->name,
                'designation' => $request->designation,
                'mobile1' => $request->mobile1,         
                'mobile2' => $request->mobile2,  
                'siteEmail1' => $request->siteEmail1,  
                'siteEmail2' => $request->siteEmail2,  
                'siteAddress1' => $request->siteAddress1,  
                'siteAddress2' => $request->siteAddress2,        
                'image' => @$image,   
                'orderBy' => $request->orderBy,   
                'status' => $request->status,   
            ]); 

           return redirect(route('contactAddress.index'))->with('msg','Contact Address Created Successfully');
        }else{
            return view('admin.contactAddress.add')->with(compact('title','settings'));
        }
        
    }

    public function edit(Request $request, $id=NULL){
        $title = 'Modify Contact Address';
        $contactAddress = ContactAddress::find($id);
        if(count($request->all()) > 0){
            /*if($request->image){
                @unlink($contactAddress->image);
                $width = '364';
                $height = '275';
                $image = \App\HelperClass::UploadImage($request->image,'time_zone','public/uploads/time_zones/',@$width,@$height);
                $contactAddress->update( [
                    'image' => @$image,          
                ]);
            }*/
            $contactAddress->update( [
                'title' => $request->title,
                'name' => $request->name,
                'designation' => $request->designation,
                'mobile1' => $request->mobile1,         
                'mobile2' => $request->mobile2,  
                'siteEmail1' => $request->siteEmail1,  
                'siteEmail2' => $request->siteEmail2,  
                'siteAddress1' => $request->siteAddress1,  
                'siteAddress2' => $request->siteAddress2,  
                'orderBy' => $request->orderBy,   
                'status' => $request->status,          
            ]);

            return redirect(route('contactAddress.index'))->with('msg','ContactAddress Updated Successfully'); 
        }else{
            return view('admin.contactAddress.edit')->with(compact('contactAddress','title'));
        }
    }


    public function status(Request $request)
    {
        if($request->ajax())
        {   
            $data = ContactAddress::find($request->timeZoneId);
            $data->status = $data->status ^ 1;
            $data->update();
            print_r(1);       
            return;
        }

    }

    public function delete(Request $request,$id = NULL)
    {   
        if($request->timeZoneId){
            $timeZoneId = $request->timeZoneId; 
        }else{
            $timeZoneId = $id;
        }

        $contactAddress = ContactAddress::find($timeZoneId);
        @unlink($contactAddress->image); 
        ContactAddress::where('id',$timeZoneId)->delete();
        return redirect(route('contactAddress.index'))->with('msg','contactAddress Deleted Successfully'); 
    }
  
}
