@extends('layouts.layout')
@section('content')
@include('layouts.error')
<div class="col-6">
<form method="POST" action="/riders">
  {{csrf_field()}}
  <div class="form-group">
    <label for="addRiderFirstsName">Enter rider first name</label>
    <input type="text" class="form-control" id="addRiderName" name="firstName"
      aria-describedby="emailHelp" placeholder="Rider name" autofocus>
    <small id="addEventName" class="form-text text-muted">Please enter first name</small>
  </div>
  <div class="form-group">
    <label for="addRiderLastName">Enter rider second name</label>
    <input type="text" class="form-control" id="addRiderLastName" name="lastName"
      aria-describedby="emailHelp" placeholder="Rider last name" >
    <small id="addEventName" class="form-text text-muted">Please enter last name</small>
  </div>
  <div class="form-group">
    <label for="plateNumber">Enter rider plate nuber</label>
    <input type="text" class="form-control" id="plateNumber" name="plateNumber"
      aria-describedby="emailHelp" placeholder="Rider plate number" >
    <small id="plateNumber" class="form-text text-muted">Please enter rider plate number</small>
  </div>
  <div class="form-group">
    <label for="addRideClub">Enter rider club</label>
    <input type="text" class="form-control" id="addRiderClub" name="club"
      aria-describedby="emailHelp" placeholder="Rider Club" >
    <small id="addEventName" class="form-text text-muted">Please enter rider club</small>
  </div>
  <div class="form-group">
    <label for="addDob">Day of birth</label>
    <input type="text" class="form-control" id="addDob" placeholder="Date" name="dob">
  </div>
  <div class="form-group">
    <label for="addRiderSex">Enter rider sex</label>
    <input type="text" class="form-control" id="addRiderSex" name="sex"
      aria-describedby="emailHelp" placeholder="Rider sex">
    <small id="addEventName" class="form-text text-muted">Please enter rider sex</small>
  </div>
  <div class="form-group">
    <label for="addRiderEmail">Enter rider email</label>
    <input type="text" class="form-control" id="addRiderEmail" name="email"
      aria-describedby="emailHelp" placeholder="Rider email">
    <small id="addRiderEmail" class="form-text text-muted">Please enter rider email</small>
  </div>
  <div class="form-group">
    <label for="addRiderPhone">Enter rider phone</label>
    <input type="text" class="form-control" id="addRiderPhone" name="phone"
      aria-describedby="emailHelp" placeholder="Rider phone number" >
    <small id="addRiderPhone" class="form-text text-muted">Please enter rider phone number</small>
  </div>


    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
    <button type="submit" class="btn btn-primary">Add rider</button>
</form>
</div>
<div class="col-6">
</div>
@endsection
