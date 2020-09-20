<?php

namespace App;

use Intervention\Image\ImageManagerStatic as Image;
use  File;
use  DB;

class HelperClass
{
    public static function _blogImage($file)
    {
        $data = getimagesize($file);
        $width = $data[0];
        $height = $data[1];

        $directory = 'public/uploads/blog_image/';
        if(!file_exists ($directory))
            mkdir($directory);
        $logoUrl = $directory.($name);
        Image::make($file)->resize(min(1200,$width) , min(800,$height))->save($logoUrl);  
        return $logoUrl;
    }


    /*This is last modified function for upload any image*/
    public static function UploadImage($file,$table=null,$directory=null,$width=null,$height=null)
    {   
        $lastData = \DB::table($table)->find(\DB::table($table)->max('id'));
        if(@$lastData){
            $maxId = $lastData->id+1+rand(100000000,99999999999);
        }else{
           $maxId = '1'.+rand(100000000,99999999999); 
        }
        
        $data = getimagesize($file);
        $filename = $file->getClientOriginalName(); 
        $name = pathinfo($filename, PATHINFO_FILENAME);
        $logoExtension = $file->getClientOriginalExtension();
        if(!file_exists ($directory))
        mkdir($directory);
        $logoUrl = $directory.($name.'_'.$maxId.'.'.$logoExtension);
        if(@$width == null && @$height == null){
            move_uploaded_file($file, "$directory$name".'_'.$maxId.'.'."$logoExtension");
        }
        if(@$width != null && @$height != null){
            Image::make($file)->resize($width, $height)->save($logoUrl);
        }
        return $logoUrl;
    }
}
