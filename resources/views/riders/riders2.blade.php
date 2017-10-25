@extends('layouts.layout')
@section('content')
<div class="col">
  <h2>Riders</h2>
</div>
<div class="col">
  <a href="/addrider">  <button type="button" class="btn btn-primary" data-toggle="modal"
      data-target="#AddRiderModdal">Add rider</button> </a>
</div>
  <div class="table-responsive">
    <table class="table table-striped">
      <thead>
        <tr>
          <th>First Name</th>
          <th>Second Name</th>
          <th>Plate number</th>
          <th>Club</th>
          <th>Day of birth</th>
          <th>sex</th>
          <th>e-mail</th>
          <th>phone</th>
        </tr>
      </thead>
      <tbody>
        @foreach($riders as $rider)
        <tr>
          <td>{{$rider->firstName}}</td>
          <td>{{$rider->lastName}}</td>
          <td>{{$rider->plateNumber}}</td>
          <td>{{$rider->club}}</td>
          <td>{{$rider->dob}}</td>
          <td>{{$rider->sex}}</td>
          <td>{{$rider->email}}</td>
          <td>{{$rider->phone}}</td>
        </tr>
        @endforeach
      </tbody>
    </table>
  </div>

  <div class="col">
    <a href="/addrider">  <button type="button" class="btn btn-primary" data-toggle="modal"
        data-target="#AddRiderModdal">Add rider</button></a>
  </div>


@endsection
