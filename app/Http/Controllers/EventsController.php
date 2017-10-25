<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Event;

class EventsController extends Controller
{
    public function index(){
		$events=Event::all();//wczytywanie wszystkich rekordow i wszystkich kolumn
		return view('events.events', compact('events'));
	}

	public function show($id){
    $event=Event::find($id);
    $riders=\App\Rider::all(['id','firstName','lastName','plateNumber']);// wczytwanie poszczegolnych kolum
    $categories=$event->categories;
    if (count($categories)){
      foreach ($categories as $category) {
        $categorizedRiders[$category->id]=\App\Category::find($category->id)->riders;


      }
      //return $categorizedRiders;
    }
    //return $riders;
    return view('events.show',compact(['id','event','categories','riders','categorizedRiders']));
	}

  public function store(){
    //create new event
    $this->validate(request(),[
                    'eventName' =>'required',
                    'eventDate' =>'required'

    ]);
    Event::create(request(['eventName','eventDate']));

    return redirect()->action('EventsController@index');

  }

  public function destroy(Event $event){
    //delete event

    Event::destroy($event->id);

    return redirect()->action('EventsController@index');
  }

  public function edit(Request $request, $id){
    //update event
    $this->validate(request(),[
                    'eventName' =>'required',
                    'eventDate' =>'required'

    ]);
    Event::findOrfail($id)->update(request(['eventName','eventDate']));
    return redirect()->action('EventsController@index');
  }
}
