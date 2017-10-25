<div class="modal fade" id="AddCategoryModdal" tabindex="-1" role="dialog"
  aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
  <div class="modal-content">
    <div class="modal-header">
    <h5 class="modal-title" id="exampleModalLabel">Add new category</h5>
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
      <span aria-hidden="true">&times;</span>
    </button>
    </div>
    <div class="modal-body">
    <form method="POST" action="/category">
      {{csrf_field()}}
      <div class="form-group">
        <label for="addCategoryName">Enter category</label>
        <input type="text" class="form-control" id="addCategory" name="categoryName"
          aria-describedby="emailHelp" placeholder="Enter category name" required autofocus>
        <small id="addEventName" class="form-text text-muted">Please enter category name</small>
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
