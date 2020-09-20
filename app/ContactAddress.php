<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ContactAddress extends Model
{	protected $table = 'contact_address';

	protected $fillable = [
        'title','name','designation','siteEmail1','siteEmail2','mobile1', 'mobile2','image', 'siteAddress1','siteAddress2','orderBy','status'
    ];

    protected $hidden = [
        'created_at', 'updated_at',
    ];
}
