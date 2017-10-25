<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;

class CategoriesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $event=Event::find(1);
      $categories=Category::find(1);
      return $event;
        //
    }

    public function attach($id)
    {
      $ridersReq=request()->riderId;
      if (count($ridersReq)){
        $category=Category::find($id);
        foreach ($ridersReq as $riderReq){

          $rider=\App\Rider::find($riderReq);
          $rider->categories()->attach($category);
        }
      }
      //return dd(request());
      return back();
    }
    public function detach($cat, $ri)
    {
      $rider=\App\Rider::find($ri);
      $category=Category::find($cat);
      //return dd($category->riders());
      $rider->categories()->detach($category);
      //$category->riders()->detach();
      return back();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        Category::create(request(['event_id','categoryName']));
        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show(Category $category)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(Category $category)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Category $category)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(Category $category)
    {
        //
    }
}
