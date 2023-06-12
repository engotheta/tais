

<div class="col-12">
    @if($errors->count())
      <div class="alert alert-warning col-12" role="alert">
        <span class='form_error'>{!! $errors->first('title') !!}</span> <br />
        <span class='form_error'>{!! $errors->first('url') !!}</span><br>
				<span class='form_error'>{!! $errors->first('content_sw') !!}</span><br>
				<span class='form_error'>{!! $errors->first('mediaurl') !!}</span><br>
      </div>
    @endif
</div>

<div class="col-md-12 px-0 mt-0">

  {{-- photo upload --}}
  <div class="card-body px-0 pt-0">
    <div class="row">
      {{-- <div class="col-12 form-group">
        {!! Form::label('title_sw', 'Image Caption title in in swahili *') !!}
        {!! Form::text('title_sw',null,['class'=>'form-control']) !!}
      </div> --}}

      {{-- <div class="col-12 form-group">
        {!! Form::label('title_en', 'Image Caption title in  english *') !!}
				{!! Form::text('title_en',null,['class'=>'form-control']) !!}
      </div> --}}

      <div class="col-12 form-group">
        {!! Form::label('content_sw', 'Swahili caption *') !!}
				{!! Form::textarea('content_sw',null,['class'=>'form-control','rows'=>'3']) !!}
      </div>

      <div class="col-12 form-group">
        {!! Form::label('content_en', 'English caption *') !!}
				{!! Form::textarea('content_en',null,['class'=>'form-control','rows'=>'3']) !!}
      </div>

      <div class="form-group">
          {!! Form::label('mediaurl', ' ') !!}
          {!! Form::hidden('mediaurl', null,['id' => 'upload_img','class'=>'form-control']) !!}
      </div>

      <div class="col-12 form-group">
				{!! Form::label('status', 'Status') !!}
				{!! Form::select('status', array(1=>'Active', 0 => 'In Active'),null,['class'=>'form-control']) !!}
      </div>


      <div class="col-12 form-group">
        {!! Form::submit($submitButton, ['class' => 'btn btn-primary col-md-12']) !!}
      </div>
    </div>
  </div>
</div>
