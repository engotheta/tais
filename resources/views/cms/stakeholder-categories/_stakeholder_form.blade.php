<div class="col-12">
    @if($errors->count())
      <div class="alert alert-warning col-12" role="alert">
        <span class='form_error'>{!! $errors->first('name') !!}</span> <br/>
        <span class='form_error'>{!! $errors->first('principal_officer') !!}</span> <br/>
        <span class='form_error'>{!! $errors->first('region') !!}</span> <br/>
        <span class='form_error'>{!! $errors->first('address') !!}</span> <br/>
        <span class='form_error'>{!! $errors->first('email') !!}</span> <br/>
        <span class='form_error'>{!! $errors->first('license_type') !!}</span> <br/>
        <span class='form_error'>{!! $errors->first('phone') !!}</span> <br/>
        <span class='form_error'>{!! $errors->first('category_id') !!}</span> <br/>
             <span class='form_error'>{!! $errors->first('class_of_business') !!}</span> <br/>
      </div>
    @endif
</div>


<div class="col-md-12 px-0 mt-0">
  {{-- photo upload --}}
  <div class="card-body px-0 pt-0">

    <div class="form-group mb-3">
      {!! Form::label('photo_url', ' ') !!}
      {!! Form::hidden('photo_url', null,['id' => 'upload_img','class'=>'form-control']) !!}
    </div>

    <div class="row">
      <div class="col-12 col-md-12 form-group">
        {!! Form::label('name', 'Enitity Name *') !!}
        {!! Form::text('name',null,['class'=>'form-control']) !!}
      </div>

      <div class="col-12 form-group" style="display:none">
        {!! Form::label('category_id', 'Category') !!}
        {!! Form::text('category_id',$selected_category->id,['class'=>'form-control']) !!}
      </div>

      <div class="col-12 form-group">
        {!! Form::submit($submitButton, ['class' => 'btn btn-primary saving-button col-md-12']) !!}
      </div>
    </div>
  </div>
</div>
