<!-- Modal Add Event-->
<div class="modal fade" id="AddRiderModdal" tabindex="-1" role="dialog"
  aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
  <div class="modal-content">
    <div class="modal-header">
    <h5 class="modal-title" id="exampleModalLabel">Add new rider</h5>
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
      <span aria-hidden="true">&times;</span>
    </button>
    </div>
    <div class="modal-body">
    <form method="POST" action="/riders">
      {{csrf_field()}}
      <div class="form-group">
        <label for="addRiderFirstsName">Enter rider first name</label>
        <input type="text" class="form-control" id="addRiderName" name="firstName"
          aria-describedby="emailHelp" placeholder="Rider name" required autofocus>
        <small id="addEventName" class="form-text text-muted">Please enter first name</small>
      </div>
      <div class="form-group">
        <label for="addRiderLastName">Enter rider second name</label>
        <input type="text" class="form-control" id="addRiderLastName" name="lastName"
          aria-describedby="emailHelp" placeholder="Rider last name" required>
        <small id="addEventName" class="form-text text-muted">Please enter last name</small>
      </div>
      <div class="form-group">
        <label for="plateNumber">Enter rider plate nuber</label>
        <input type="text" class="form-control" id="plateNumber" name="plateNumber"
          aria-describedby="emailHelp" placeholder="Rider plate number" required>
        <small id="plateNumber" class="form-text text-muted">Please enter rider plate number</small>
      </div>
      <div class="form-group">
        <label for="addRideClub">Enter rider club</label>
        <input type="text" class="form-control" id="addRiderClub" name="club"
          aria-describedby="emailHelp" placeholder="Rider Club" required>
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

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
        <button type="submit" class="btn btn-primary">Add rider</button>
      </div>
      @include ('layouts.error')
    </form>

    </div>
  </div>
  </div>
</div>
<!-- Modal end -->
