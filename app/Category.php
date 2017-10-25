<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
  protected $fillable=['event_id','categoryName'];
  public function event()
  {
    return $this->belongsTo(Event::class);
  }
  public function riders()
  {
    return $this->belongsToMany(Rider::class);
  }

}
