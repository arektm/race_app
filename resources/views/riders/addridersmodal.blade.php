<div class="modal fade" id="AddRidersModdal" tabindex="-1" role="dialog"
  aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
  <div class="modal-content">
    <div class="modal-header">
    <h5 class="modal-title" id="addrider">Add rider</h5>
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
      <span aria-hidden="true">&times;</span>
    </button>
    </div>
    <div class="modal-body">
    <form method="POST" action="">
      {{csrf_field()}}
      <div class="form-group">
        <!-- <label for="addCategoryName">Riders</label> -->

         <!-- <select multiple class="form-control" id="selecRiders" size=20> -->
        <select class="chosen-select" data-placeholder="Select riders" multiple tabindex="4" >
           <option value=""></option>
           <option value="33">355 John Deep</option>
           <option value="22">455 Ben Doe</option>
           <option value="55"> 02 Arnold Feen</option>
           <option value="12">305 Michael Humm</option>
           <option value="54">250 Mark Jug 422</option>
         </select>

      </div>
      <div class="form-group">
        <input type="hidden" name="event_id" value="{{$event->id}}">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
        <button type="submit" class="btn btn-primary">Add category</button>
      </div>
    </form>
    @include ('layouts.error')
    </div>
  </div>
  </div>
</div>
<!-- Modal end -->
