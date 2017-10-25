<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    //
    protected $fillable=['eventName', 'eventDate'];

    public function categories()
    {
      //return $this->hasMany(Category::class);
      return $this->hasMany('App\Category');
    }
}
