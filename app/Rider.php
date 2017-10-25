<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Rider extends Model
{
  protected $fillable=['firstName','lastName','plateNumber','club','dob','sex','email','phone'];

  public function categories()
  {
    return $this->belongsToMany(Category::class);
  }

}
