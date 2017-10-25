@extends('layouts.layout')

@section('content')
			<div class="row">
				<div class="col">
					<h2>Events</h2>
				</div>
				<div class="col">
					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target="#AddEventModdal">Add event</button>
				</div>
			</div>
    <!-- Modal Add Event-->
		<div class="modal fade" id="AddEventModdal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
  		  <div class="modal-dialog" role="document">
			<div class="modal-content">
			  <div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Add new event</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				  <span aria-hidden="true">&times;</span>
				</button>
			  </div>
			  <div class="modal-body">
				<form method="POST" action="/events">
					{{csrf_field()}}
				  <div class="form-group">
						<label for="addEventName">Enter event name</label>
						<input type="text" class="form-control" id="addEventName" name="eventName"
							aria-describedby="emailHelp" placeholder="Enter event name" required autofocus>
						<small id="addEventName" class="form-text text-muted">Please enter full event name</small>
				  </div>
				  <div class="form-group">
						<label for="addEventDate">Event date</label>
						<input type="text" class="form-control" id="addEventDate" placeholder="Date"
						name="eventDate" required>
				  </div>
				  <div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
						<button type="submit" class="btn btn-primary">Add Event</button>
					</div>
				</form>
				@include ('layouts.error')
			  </div>
			</div>
		  </div>
		</div>
		<!-- Modal end -->


<div class="table-responsive">

    <table class="table table-striped">
        <thead>
          <tr>
          	<th>Date</th>
            <th>Event Name</th>
				  	<th>Action</th>
          </tr>
        </thead>
        <tbody>

			  @foreach ($events as $event)
          <tr>
					  <td>{{$event->eventDate}}</td>
	          <td>{{$event->eventName}}</td>
					  <td>

							<form method="POST" action="/events/{{$event->id}}">
									<a href="/events/{{$event->id}}"><button type="button" class="btn btn-success btn-sm"
										name="button">Select</button></a>
									<button type="button" class="btn btn-secondary btn-sm"
										data-toggle="modal" data-target="#editEventModdal" id="{{$event->id}}"
										name="editEvent">Edit</button>
									{{ method_field('DELETE') }}
									{{ csrf_field() }}
							  	<button type="submit" class="btn btn-danger btn-sm" value="delete">Delete</button>

								</form>
					  </td>
          </tr>

        @endforeach
        </tbody>
    </table>
			<!-- Modal Edit event -->
			<div class="modal fade" id="editEventModdal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog" role="document">
				<div class="modal-content">
				  <div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Edit event</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					  <span aria-hidden="true">&times;</span>
					</button>
				  </div>
				  <div class="modal-body">
					<form method="POST" action="" id="edit">
						{{ method_field('PATCH') }}
						{{ csrf_field() }}
					  <div class="form-group">
						<label for="EventName">Event name</label>
						<input type="text" class="form-control" id="editEventName" aria-describedby="eventName"
						name="eventName" value="" required autofocus>
						<small id="eventNameLabel" class="form-text text-muted">Please enter event name</small>
					  </div>

					  <div class="form-group">
						<label for="eventDate">Event date</label>
						<input type="text" class="form-control" id="editEventDate"  name="eventDate" required>
					  </div>
					  <!-- <div class="form-check">
						<label class="form-check-label">
						  <input type="checkbox" class="form-check-input">
						  Check me out
						</label>
					  </div> -->
					  <!-- <button type="submit" class="btn btn-primary">Submit</button> -->


				  <div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
					<button type="submit" class="btn btn-primary">Save</button>
				  </div>
				</div>
				</form>
				</div>
			  </div>
			</div>
		<!-- Modal end -->
			</div><!-- table -->


@endsection

@section ('footerScripts')
<script>
//sript inserts data for edit modal
var k=0;
	$(document).ready(function(){
		$("button[name='editEvent']").click(function(){
			event=($(this).attr("id"));
			events=<?=$events ?>;
			for (i=0;i<events.length;i++){
				if (events[i].id==event){
					k=i;
				}
			}

			//$('input[name=eventName]').val(events[k].eventName);
			//$('input[name=eventDate]').val(events[k].eventDate);
			$('#editEventName').val(events[k].eventName);
			$('#editEventDate').val(events[k].eventDate);
			$('#edit').attr('action','/events/'+events[k].id);
		});
	});
</script>
<script>
//script for autofocus in modal
$(document).on('shown.bs.modal', function (e) {
        $('[autofocus]', e.target).focus();
      });
</script>
<script>
//script for calendar in modal
	$( function() {
		$( "#addEventDate" ).datepicker({ dateFormat: 'yy-mm-dd'});
	} );
</script>
<script>
$( function() {
	$( "#editEventDate" ).datepicker({ dateFormat: 'yy-mm-dd'});
} );
</script>
@endsection
