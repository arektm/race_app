<?php

namespace App\Http\Controllers;

use App\Rider;
use Illuminate\Http\Request;

class RidersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $riders=Rider::all();
      return view('riders.riders', compact('riders'));
    }
    public function index2()
    {
      $riders=Rider::all();
      return view('riders.riders2', compact('riders'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('riders.addrider');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store()
    {

      //dd(request()->plateNumber);
      $this->validate(request(),[
                      'firstName' =>'required',
                      'lastName' =>'required',
                      'plateNumber'=>'required|unique:riders'

      ]);

      //dd(request(['firstName','lastName','plateNumber','club','dob','sex','email','phone']));
      Rider::create(request(['firstName','lastName','plateNumber','club','dob','sex','email','phone']));

      return redirect()->action('RidersController@index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Rider  $rider
     * @return \Illuminate\Http\Response
     */
    public function show(Rider $rider)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Rider  $rider
     * @return \Illuminate\Http\Response
     */
    public function edit(Rider $rider)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Rider  $rider
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Rider $rider)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Rider  $rider
     * @return \Illuminate\Http\Response
     */
    public function destroy(Rider $rider)
    {
        //
    }
}
