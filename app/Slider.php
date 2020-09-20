<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
	protected $fillable = [
        'firstTitle','secondTitle','description','image','section','productId','link','status','metaTitle','metaKeyword','metaDescription','orderBy'
    ];
}
