@extends('layouts.layout')


@section('content')
<div class="col">
  <h2>Categories for {{$event->eventName}} at {{$event->eventDate}}</h2>
</div>
<div class="col">
    <button type="button" class="btn btn-primary" data-toggle="modal"
      data-target="#AddCategoryModdal">Add category</button>

      <button class="btn btn-sucess">Set motos order</button>
</div>



@include('events/addCategoryModal')


<div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Category</th>
                  <th>Riders</th>
                </tr>
              </thead>
              <tbody>
                @foreach($categories as $category)
                <tr>

                  <td>
                    <div class="form-group">
                      <h4>{{$category->categoryName}}</h4>
                    </div>
                    <form action="/category/{{$category->id}}" method="POST">
                      {{csrf_field()}}
                     <div class="form-group">
                      <select name="riderId[]" class="chosen-select" data-placeholder="Select riders" multiple="multiple" tabindex="4" >
                         @foreach ($riders as $rider)
                         <option value="{{$rider['id']}}">{{$rider['plateNumber']}}
                            {{$rider['firstName']}} {{$rider['lastName']}}</option>
                         @endforeach
                       </select>
                      <button type="submit" class="btn btn-success btn-sm">Add riders</button>
                    </div>
                  </form>
                  </td>
                  <td>@foreach( $categorizedRiders[$category->id] as $categorizedRider)
                      {{$categorizedRider->plateNumber}}
                      {{$categorizedRider->firstName}}
                      {{$categorizedRider->lastName}}
                      <a href="/category/{{$category->id}}/{{$categorizedRider->id}}" class="badge badge-danger">
                        Delete</a>

                    </br>
                      @endforeach
                  </td>


                </tr>
                @endforeach
              </tbody>
            </table>
          </div>
          <div>
            <button class="btn btn-warning">Close list and view motos</button>
          </div>
          @include('riders.addridersmodal')
@endsection

@section ('footerScripts')
@endsection
