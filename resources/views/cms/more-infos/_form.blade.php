<div class="row">
    @if($errors->count())
      <div class="alert alert-warning col-12" role="alert">
        <span class='form_error'>{!! $errors->first('title_sw') !!}</span> <br/>
        <span class='form_error'>{!! $errors->first('title_en') !!}</span> <br/>
        <span class='form_error'>{!! $errors->first('summary_sw') !!}</span> <br/>
        <span class='form_error'>{!! $errors->first('summary_en') !!}</span> <br/>
        <span class='form_error'>{!! $errors->first('content_sw') !!}</span> <br/>
        <span class='form_error'>{!! $errors->first('content_en') !!}</span> <br/>
        <span class='form_error'>{!! $errors->first('photo_url') !!}</span>
        <span class='form_error'>{!! $errors->first('item_name') !!}</span>
      </div>
    @endif
</div>


<div class="card-block px-0 mt-3">
  <h5 class="">Contents </h5>

  <div class="form-group">
      {!! Form::label('photo_url', ' ') !!}
      {!! Form::hidden('photo_url', null,['id' => 'upload_img','class'=>'form-control']) !!}
  </div>

  <div class="col-md-12">
    <div class="col-12 px-0 form-group">
        {!! Form::label('title_en', 'Title in English') !!}
        {!! Form::text('title_en',null,['class'=>'form-control']) !!}
    </div>

    <div class="col-12 px-0 form-group">
      {!! Form::label('title_sw', 'Title in Swahili') !!}
      {!! Form::text('title_sw',null,['class'=>'form-control']) !!}
    </div>

    {{-- <div class="col-12 px-0 form-group">
        {!! Form::label('summary_en', 'Summary in English') !!}
        {!! Form::textarea('summary_en', null, ['class' => 'form-control','rows'=>'3','cols'=>'80']) !!}
    </div>

    <div class="col-12 px-0 form-group">
      {!! Form::label('summary_sw', 'Summary in Swahili') !!}
      {!! Form::textarea('summary_sw', null, ['class' => 'form-control','rows'=>'3','cols'=>'80']) !!}
    </div> --}}

    <div class="col-12 px-0 form-group">
      {!! Form::label('content_en', 'Content in English') !!}
      {!! Form::textarea('content_en', null, ['id' => 'redactor_en', 'class' => 'form-control','rows'=>'3','cols'=>'80']) !!}
    </div>

    <div class="col-12 px-0 form-group">
      {!! Form::label('content_sw', 'Content in Swahili') !!}
      {!! Form::textarea('content_sw', null, ['id' => 'redactor_sw', 'class' => 'form-control','rows'=>'3','cols'=>'80']) !!}
    </div>

    @if(isset($create))
      <div class="col-6 px-0 form-group">
          {!! Form::label('item_name', 'More information for') !!}
          {!! Form::select('item_name',array(
            'tira-leadership'=>'About TIRA Leadership',
            'online-services'=>'TIRA Online Services',
            'latest-news'=>'TIRA Latest News',
            'tira-partners'=>'TIRA partners',
            'about-tira'=>'About TIRA Links',
            'consumer-services'=>'Consumer Services Links',
            'licensed-entities'=>'Licensed Entities Links',
            'public-relations'=>'Public Relations Links',
            ),null,['class'=>'form-control']) !!}
      </div>
    @endif

    <div class="col-6 px-0 form-group">
          {!! Form::label('active', 'Status') !!}
          {!! Form::select('active',array('1' => 'Active','0'=>'Inactive'),null,['class'=>'form-control']) !!}
    </div>

    <div class="col-12 px-0 form-group">
            {!! Form::submit($submitButton, ['class'=>'btn btn-primary form-control']) !!}
    </div>
  </div>
